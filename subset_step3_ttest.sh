#!/bin/bash

#Subset analysis of the checker - music contrast 

derDir=~/compute/class_517/checkerboard/brainlife_subset
outputDir=~/compute/class_517/checkerboard/subset_results

3dttest++ -prefix ${outputDir}/checker-music_blur8_masked \
-mask ${outputDir}/func_mask2+tlrc \
-setA \
${derDir}/sub-24/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-25/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-26/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-27/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-28/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-29/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-30/checker_stats_blur8+tlrc'[5]'
