# checkerboard

This repo contains scripts used to complete the PSYCH 517 Flickering Checkerboard Analysis. Both the subject- and group-level analyses were conducted in AFNI.

## guide

Scripts involved in preprocessing:
1. dcm2niix_only.sh and job_dcm2nii.sh: convert dicoms to nifti
2. freesurfer and fMRIPrep: see brainlife.io for these apps
3. prep1: rename and copy brainlife output files into a more manageable file structure

Scripts involved in single-subjects regression:
1. single_step1: make timing files
2. single_step2: motion regressors
3. single_step3: run the regression
4. figure1: generate an image of the design

Scripts involved in the subset (*N* = 7) group-level analysis:
1. 

