# fldepends.R - DESC
# /fldepends.R

# Copyright European Union, 2017
# Author: Iago Mosqueira (EC JRC) <iago.mosqueira@jrc.ec.europa.eu>
#
# Distributed under the terms of the European Union Public Licence (EUPL) V.1.1.

# https://cran.r-project.org/web/packages/miniCRAN/vignettes/miniCRAN-dependency-graph.html


library("miniCRAN")

# LIST FLR pkgs
pkgs <- c("FLCore", "ggplotFL", "FLa4a", "FLXSA", "FLAssess", "FLSAM", "FLasher",
  "FLBRP", "FLFishery", "mpb", "FLife", "FLFleet", "FLBEIA")

# GET dependencies
deps <- lapply(pkgs, pkgDep, suggests=FALSE, enhances=FALSE)
names(deps) <- pkgs

# FROM repo
deps <- pkgDep(pkgs, repos="http://flr-project.org/R")

# FLR only
deps <- lapply(deps, function(x) x[x %in% pkgs])

     availPkgs <- pkgAvail(
       repos = "http://flr-project.org/R",
       type = "source"
       )

# PLOT
dg <- makeDepGraph(pkgs, availPkgs=availPkgs)

plot(dg, legendPosition = c(-1, -1), vertex.size=10, cex=0.7)

pdf(file='deps.pdf', paper="a4r", height="19cm", width="28")
dev.off()
