#!/bin/bash

#Group analysis (N=30) of the checkerboard - music contrast in the Flanker Task

derDir=~/compute/class_517/checkerboard/brainlife
outputDir=~/compute/class_517/checkerboard/all_results

3dttest++ -prefix ${outputDir}/checker-music_blur8_masked \
-mask ${outputDir}/func_mask+tlrc \
-setA \
${derDir}/sub-01/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-02/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-03/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-04/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-05/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-06/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-07/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-08/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-09/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-10/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-11/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-12/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-13/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-14/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-15/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-16/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-17/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-18/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-19/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-20/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-22/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-23/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-24/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-25/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-26/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-27/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-28/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-29/checker_stats_blur8+tlrc'[5]' \
${derDir}/sub-30/checker_stats_blur8+tlrc'[5]' 

