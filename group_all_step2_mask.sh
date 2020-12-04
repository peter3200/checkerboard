#!/bin/bash

derDir=~/compute/class_517/checkerboard/brainlife
outputDir=~/compute/class_517/checkerboard/all_results
overlap=1 #proportion of overlap between scan runs required for mask. 0=any runs; 1=all runs

3dmask_tool -input ${derDir}/sub*/fmriprep*func_mask.nii.gz -frac $overlap -prefix ${outputDir}/func_mask
