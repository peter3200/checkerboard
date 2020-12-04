#!/bin/bash

# Blur the functional datasets

derDir=~/compute/class_517/checkerboard/brainlife

cd $derDir
for i in sub-*; do
    cd $i
    3dmerge -prefix checker_stats_blur8 -1blur_fwhm 8 -doall checker_stats+tlrc 
    cd $derDir
done
