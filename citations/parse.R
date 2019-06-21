# parse.R - DESC
# /parse.R

# Copyright European Union, 2017
# Author: Iago Mosqueira (EC JRC) <iago.mosqueira@ec.europa.eu>
#
# Distributed under the terms of the European Union Public Licence (EUPL) V.1.1.

# INSTALL package:bibtex
devtools::install_github("romainfrancois/bibtex")


library(bibtex)

flr <- read.bib('flr.bib')


# GET dois

fdo <- unlist(lapply(flr, function(x) gsub("[{}]", "", x$doi)))

# scopus

# grep "doi={10" scopus.bib > dois

sco <- readLines('dois')
sdo <- gsub("doi=", "", gsub("[{},]", "", sco))

for(i in seq(length(sdo)))
  if(sdo[i] %in% fdo)
    sdo[i] <- NA

sdo <- sdo[!is.na(sdo)]
