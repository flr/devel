# fldepends.R - DESC
# /fldepends.R

# Copyright European Union, 2017
# Author: Iago Mosqueira (EC JRC) <iago.mosqueira@jrc.ec.europa.eu>
#
# Distributed under the terms of the European Union Public Licence (EUPL) V.1.1.

# https://cran.r-project.org/web/packages/miniCRAN/vignettes/miniCRAN-dependency-graph.html


library("miniCRAN")

#
pkgs <- c("FLCore", "ggplotFL", "FLa4a", "FLXSA", "FLAssess", "kobe", "FLSAM",
  "diags", "FLash", "FLBRP")

pkgs <- c("FLCore", "ggplotFL", "FLa4a", "FLXSA", "FLAssess", "FLSAM", "FLash",
  "FLBRP", "FLFishery", "mpb", "FLife")

#
deps <- lapply(pkgs, pkgDep)

names(deps) <- pkgs

#
pkgDep(pkgs, repos="http://flr-project.org/R")

dg <- makeDepGraph(pkgs, enhances=TRUE)

plot(dg, legendPosition = c(-1, -1), vertex.size=10, cex=0.7)

pdf(file='deps.pdf', paper="a4r", height="19cm", width="28")

dev.off()
