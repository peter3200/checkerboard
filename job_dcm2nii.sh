#!/bin/bash

#SBATCH --time=01:00:00   # walltime
#SBATCH --ntasks=1     # number of processor cores (i.e. tasks)
#SBATCH --nodes=1 # number of nodes
#SBATCH --mem-per-cpu=4096M    # memory per CPU core
#SBATCH -J "dcm2nii" # job name
#SBATCH --mail-user=petemade@isu.edu   # email adress
#SBATCH --mail-type=END

# set reference pathways
dicom_dir=/fslhome/mpeter55/compute/class_517/checkerboard/dicoms
out_dir=/fslhome/mpeter55/compute/class_517/checkerboard/derivatives

#Compatibility variables for PBS. Delete if not needed.
export PBS_NODEFILE=`/fslapps/fslutils/generate_pbs_nodefile`
export PBS_JOBID=$SLURM_JOB_ID
export PBS_O_WORKDIR="SLURM_SUBMIT_DIR"
export PBS_QUEUE=batch

# set output string
name_string=T1

#for sub in `cat /fslhome/mpeter55/compute/class_517/checkerboard/subjList.txt`; do

for sub in sub-30; do

# make output directories
mkdir -p ${out_dir}/${sub}/anat

#construct NIfTI files
dcm2niix -b y -ba y-z y -o $out_dir/${sub}/anat -f ${sub}_${name_string} ${dicom_dir}/${sub}/t*

done
