#!/bin/bash

# clone
while read p; do
  git clone  $p
done < PACKAGES

# 
for dir in */;do
  echo $dir
done
