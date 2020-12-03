#!/bin/bash

# dir_1 is output_dir (or where you would like your output to end up) and dir_2 is the location of the dicoms 
NETID=/fslhome/mpeter55
dir_1=${NETID}/compute/class_517/checkerboard/derivatives
dir_2=${NETID}/compute/class_517/checkerboard/dicoms

# create the output dirs for your subjects
cd ${dir_1}
	mkdir sub-{01..30}

# create the anat dirs
for dir in ${dir_1}/*/; do
	mkdir "$dir"/anat/
	mkdir "$dir"/func/
done

#run dcm2niix on dicoms in folder (you could also do this if you had a list of subjids using: for i in `cat /path/to/subjids.txt`; do)
for sub in `ls ${dir_1}/`; do
	~/compute/research_bin/dcm2niix/build/bin/dcm2niix -ba y -r y -o ${sub}/anat/ -f ${sub}_T1.nii.gz -x y ${dir_2}/${sub}/t1*/  
done



