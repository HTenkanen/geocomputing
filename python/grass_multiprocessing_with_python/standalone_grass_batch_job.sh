#!/bin/bash -l
#SBATCH -J python_grass_test
#SBATCH -o out.txt
#SBATCH -e err.txt
#SBATCH -t 00:02:00
#SBATCH --cpus-per-task=5
#SBATCH --mem=1000
#SBATCH -p prallel
module load geo-env fftw grass
python standalone.py 2 2 4