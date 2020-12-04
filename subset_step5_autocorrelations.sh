#!/bin/bash

# Estimate autocorrelation function (ACF)

derDir=~/compute/class_517/checkerboard/brainlife_subset
outputDir=~/compute/class_517/checkerboard/subset_results
mask=${outputDir}/func_mask2+tlrc
acfFile=${outputDir}/ACF_raw.txt
cd $derDir

for i in sub*; do
cd $i
3dFWHMx -mask $mask -input checker_errts_blur8+tlrc -acf >> $acfFile
cd $derDir
done
