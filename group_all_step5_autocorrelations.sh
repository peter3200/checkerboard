#!/bin/bash

# Estimate autocorrelation function (ACF)

derDir=~/compute/class_517/checkerboard/brainlife
outputDir=~/compute/class_517/checkerboard/all_results
mask=${outputDir}/func_mask+tlrc
acfFile=${outputDir}/ACF_raw.txt
cd $derDir

for i in sub*; do
cd $i
3dFWHMx -mask $mask -input checker_errts_blur8+tlrc -acf >> $acfFile
cd $derDir
done
