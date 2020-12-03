#!/bin/bash

#Step 5 of Single-Subject Regression

derDir=~/compute/class_517/checkerboard/brainlife

cd $derDir

for i in sub*; do
cd $i

3dDeconvolve -input fmriprep_bold.nii.gz \
     -censor motion_censor.1D \
     -mask fmriprep_func_mask.nii.gz \
     -polort A \
     -num_stimts 8 \
     -stim_file 1 motion_demean.txt'[0]' -stim_base 1 -stim_label 1 trans_x \
     -stim_file 2 motion_demean.txt'[1]' -stim_base 2 -stim_label 2 trans_y \
     -stim_file 3 motion_demean.txt'[2]' -stim_base 3 -stim_label 3 trans_z \
     -stim_file 4 motion_demean.txt'[3]' -stim_base 4 -stim_label 4 rot_x \
     -stim_file 5 motion_demean.txt'[4]' -stim_base 5 -stim_label 5 rot_y \
     -stim_file 6 motion_demean.txt'[5]' -stim_base 6 -stim_label 6 rot_z \
     -stim_times 7 checkerboard.1D 'BLOCK(1,1)'   -stim_label 7 checkerboard \
     -stim_times 8 music.1D 'BLOCK(1,1)' -stim_label 8 music \
     -gltsym 'SYM: checkerboard -music' -glt_label 1 checker-music \
     -tout \
     -x1D X.generalize.xmat.1D \
     -xjpeg X.checker.jpg \
     -errts checker_errts \
     -bucket checker_stats\
     -jobs 2

cd $derDir
done
