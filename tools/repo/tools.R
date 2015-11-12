# tools.R - DESC
# tools.R

# Copyright 2003-2013 FLR Team. Distributed under the GPL 2 or later
# Maintainer: Iago Mosqueira, JRC
# Soundtrack:
# Notes:


library(FLCore)

# load namespace into environment
env <- loadNamespace("FLCore")

# get classes
cla <- getClasses(env)

# drop virtual classes
cla <- cla[!unlist(lapply(cla, isVirtualClass))]

out <- paste("-", cla)

#
writeLines(out, con="FLCoreClasses.txt")

# exported methods

met <- ls(getNamespaceInfo(env, "exports"));

# 
ls(getNamespaceInfo(loadNamespace("FLCore"), "exports"));

