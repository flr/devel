SUBDIRS = diags FLa4a FLash FLAssess FLBEIA FLBRP FLCore FLEDA FLFleet FLife FLRDynState FLSAM FLXSA ggplotFL kobe mpb SQLiteFL

INSTALLDIRS = $(SUBDIRS:%=install-%)

.PHONY: subdirs $(SUBDIRS) $(INSTALLDIRS)
.PHONY: install
     
subdirs: $(SUBDIRS)
     
$(SUBDIRS):
	$(MAKE) -C $@

install: $(INSTALLDIRS)
$(INSTALLDIRS): 
	$(MAKE) -C $(@:install-%=%) install
