# Makefile for generating FLR packages.
# 
# Copyright 2013 FLR Team. Distributed under the GPL 2 or later
# Maintainer: Iago Mosqueira, JRC

PKG=FLCore

PKG_DATE=$(shell grep -i ^date $(PKG)/DESCRIPTION | cut -d : -d \  -f 2)
PKG_VERSION=$(shell grep -i ^version $(PKG)/DESCRIPTION | cut -d : -d \  -f 2)

FILES_DATE=$(shell date -r $(PKG) +%Y%m%d)

GIT_DATE=$(shell (cd $(PKG); git log -1 --date=short --pretty=format:"%ad"))
GIT_VERSION=$(shell (cd $(PKG); date -d `git log -1 --date=short --pretty=format:"%ad"` +%Y%m%d))

R_FILES := $(wildcard $(PKG)/R/*.R)
SRC_FILES := $(wildcard $(PKG)/src/*) $(addprefix $(PKG)/src/, $(COPY_SRC))
PKG_FILES := $(PKG)/DESCRIPTION $(PKG)/NAMESPACE $(R_FILES) $(SRC_FILES)

.PHONY: tarball install check clean build

tarball: $(PKG)_$(PKG_VERSION).tar.gz

$(PKG)_$(PKG_VERSION).tar.gz: $(PKG_FILES)
	R CMD build $(PKG)

check: update $(PKG)_$(PKG_VERSION).tar.gz
	R CMD check $(PKG)_$(PKG_VERSION).tar.gz

build: update $(PKG)_$(PKG_VERSION).tar.gz
	R CMD INSTALL --build $(PKG)_$(PKG_VERSION).tar.gz

install: update $(PKG)_$(PKG_VERSION).tar.gz
	R CMD INSTALL $(PKG)_$(PKG_VERSION).tar.gz

$(PKG)/NAMESPACE: $(R_FILES)
	Rscript -e "library(roxygen2);roxygenize('$(PKG)', roclets='rd')"

update: NEWS
ifneq ($(PKG_DATE), $(GIT_DATE))
	# CHANGE DESCRIPTION
	sed -i 's/Date: .*/Date: $(GIT_DATE)/' $(PKG)/DESCRIPTION
	sed -i 's/Version: \(.*\)[0-9]\{8\}/Version: \1$(GIT_VERSION)/' $(PKG)/DESCRIPTION
	# CHANGE README.md
	sed -i 's/Date: .*/Date: $(GIT_DATE)/' $(PKG)/README.md
	sed -i 's/Version: \(.*\)[0-9]\{8\}/Version: \1$(GIT_VERSION)/' $(PKG)/README.md
endif
ifneq ($(FILES_DATE), $(GIT_DATE))
	@echo Files changed but not committed to git
endif

NEWS: $(PKG)/NEWS.md
	sed -e 's/^-/ -/' -e 's/^## *//' -e 's/^#/\t\t/' < $(PKG)/NEWS.md | fmt -80 -s -c | sed -e 's/^ \([^-]\)/   \1/'  > $(PKG)/NEWS

clean:
	-rm -f $(PKG)_*.tar.gz
	-rm -r -f $(PKG).Rcheck

cleanall:
	-rm -f *.tar.gz
	-rm -r -f *.Rcheck

.PHONY: list
list:
	@echo "R files:"
	@echo $(R_FILES)
	@echo "\n"
	@echo "Source files:"
	@echo $(SRC_FILES)
