#!/bin/bash

cd ~/compute/class_517/checkerboard/brainlife

for i in sub*; do 
    cd $i
    1dcat fmriprep_regressors.tsv'[trans_x,trans_y,trans_z,rot_x,rot_y,rot_z]' >> motion.txt
    cd ..
done


for i in sub*; do 
    cd $i
    1d_tool.py -infile motion.txt -set_nruns 1 -demean -write motion_demean.txt
    1d_tool.py -infile motion_demean.txt -set_nruns 1 -show_censor_count -censor_prev_TR -censor_motion 0.3 motion
    1d_tool.py -infile motion_demean.txt -set_nruns 1 -split_into_pad_runs motion_demean_split
    cd ..
done

