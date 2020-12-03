#!/bin/bash

derDir=~/compute/class_517/checkerboard/brainlife 
projDir=/fslhome/mpeter55/compute/class_517/checkerboard/proj-5f9e1da7e138ec62f64e01e6

for sub in sub-{01..30}; do 
    mkdir -p ${derDir}/${sub}     
	cp ${projDir}/sub-${sub}/dt-neuro-anat-t1w.tag-fmriprep.id-*/t1.nii.gz ${derDir}/${sub}/fmriprep_t1.nii.gz
        cp ${projDir}/sub-${sub}/dt-neuro-func-regressors.tag-fmriprep.id-*/regressors.json ${derDir}/${sub}/fmriprep_regressors.json
        cp ${projDir}/sub-${sub}/dt-neuro-func-regressors.tag-fmriprep.id-*/regressors.tsv ${derDir}/${sub}/fmriprep_regressors.tsv
        cp ${projDir}/sub-${sub}/dt-neuro-func-task.tag-bold.tag-fmriprep.tag-preprocessed.id-*/bold.nii.gz ${derDir}/${sub}/fmriprep_bold.nii.gz
        cp ${projDir}/sub-${sub}/dt-neuro-mask.tag-anat.tag-brain.id-*/mask.nii.gz ${derDir}/${sub}/fmriprep_anat_mask.nii.gz
        cp ${projDir}/sub-${sub}/dt-neuro-mask.tag-task.tag-brain.tag-bold.id-*/mask.nii.gz ${derDir}/${sub}/fmriprep_func_mask.nii.gz
        cp -r ${projDir}/sub-${sub}/dt-report-html.tag-fmriprep.id-* ${derDir}/${sub}/fmriprep_output
    done
   # cp -r dt-neuro-freesurfer.id-* ${derDir}/${sub}/freesurfer
