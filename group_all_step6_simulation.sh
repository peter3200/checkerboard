#!/bin/bash

derDir=~/compute/class_517/checkerboard/brainlife
outputDir=~/compute/class_517/checkerboard/all_results
mask=${outputDir}/func_mask+tlrc
acfFile=${outputDir}/ACF_raw.txt

cd $outputDir

sed '/ 0 0 0 0/d' $acfFile > tmp

xA=`awk '{ total += $1 } END { print total/NR }' tmp`
xB=`awk '{ total += $2 } END { print total/NR }' tmp`
xC=`awk '{ total += $3 } END { print total/NR }' tmp`

3dClustSim -mask $mask -LOTS -iter 10000 -acf $xA $xB $xC > ACF_MC.txt
rm tmp
