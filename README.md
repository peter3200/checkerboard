# checkerboard

This repo contains scripts used to complete the PSYCH 517 Flickering Checkerboard Analysis. Both the subject- and group-level analyses were conducted in AFNI.

## guide

Scripts involved in preprocessing:
1. job_dcm2nii.sh: convert dicoms to nifti; uses SLURM
2. freesurfer and fMRIPrep: see brainlife.io for these apps
3. prep1: rename and copy brainlife output files into a more manageable file structure

Scripts involved in single-subjects regression:
1. single_step1: make timing files
2. single_step2: motion regressors
3. single_step3: run the regression
4. figure1: generate an image of the design
5. group_prep1: blur betas with 8 mm kernel

Scripts involved in the subset (*N* = 7) group-level analysis:
1. subset_step2: make a composite mask 
2. subset_step3: two-way *t* test
3. subset_step4: blur residuals 
4. subset_step5: estimate autocorrelatioin function
5. subset_step6: monte carlo simulations

Scripts involved in the whole (*N* = 30) group-level analysis:
1. group_all_step2: make a composite mask 
2. group_all_step3: two-way *t* test
3. group_all_step4: blur residuals 
4. group_all_step5: estimate autocorrelation function
5. group_all_step6: monte carlo simulations

Clustering was performed in the AFNI GUI. Once cluster tables were generated, MNI coordinates were used to determine the corresponding anatomical location:
mni_coordinates.R

## questions

Suggestions, comments, and questions are welcome!


