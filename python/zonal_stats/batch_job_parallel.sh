#!/bin/bash -l
#SBATCH -J python_vrt_mp_test
#SBATCH -o out.txt
#SBATCH -e err.txt
#SBATCH -t 00:01:30
#SBATCH --cpus-per-task=11
#SBATCH --mem=300
#SBATCH -p parallel

module load geo-env
python zonal_stats_parallel.py
