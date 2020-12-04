#!/bin/bash

# Blur the residuals

derDir=~/compute/class_517/checkerboard/brainlife_subset

cd $derDir
for i in sub-*; do
cd $i
3dmerge -prefix checker_errts_blur8 -1blur_fwhm 8 -doall checker_errts+tlrc 
cd $derDir
done
