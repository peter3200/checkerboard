#!/bin/bash

#Step 1 for Single Subjects Analysis

#Loop over all subjects and format timing files into FSL format
	cat sub-01_task-FlickeringCheckerBoard_run-1_events.tsv | awk '{if ($3=="Checkerboard") {print $1, $2}}' > checkerboard.txt
	cat sub-01_task-FlickeringCheckerBoard_run-1_events.tsv | awk '{if ($3=="Music") {print $1, $2}}' > music.txt

#Now convert to AFNI format
	timing_tool.py -fsl_timing_files checkerboard.txt -write_timing checkerboard.1D
	timing_tool.py -fsl_timing_files music.txt -write_timing music.1D

for i in sub-{01..30}; do
	cp checkerboard.1D ~/compute/class_517/checkerboard/brainlife/${i}
	cp music.1D ~/compute/class_517/checkerboard/brainlife/${i}
done
