#!/bin/bash -l
#SBATCH -J python_focal_array
#SBATCH -o array_job_out_%A_%a.txt
#SBATCH -e array_job_err_%A_%a.txt
#SBATCH -t 00:00:10
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2
#SBATCH --array=1-2
#SBATCH -p serial

# load needed modules
module load geo-env
# move to the directory where the data files locate
cd ~/input_files_folder

# read file names to be processed from a list given as an argument
name=$(sed -n "$SLURM_ARRAY_TASK_ID"p mapsheets.txt)
# run the analysis command and save results to smooth/ directory
python simple_focal_mean.py $name
