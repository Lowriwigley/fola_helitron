#!/usr/bin/env bash
#SBATCH -J heliano
#SBATCH --partition=medium
#SBATCH --mem=4G
#SBATCH --cpus-per-task=2

# genome = $1
# output = $2

# Activate conda environment
source activate heliano

heliano -g $1 -o $2 -n 2




