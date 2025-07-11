#!/usr/bin/env bash
#SBATCH -J eahelitron
#SBATCH --partition=medium
#SBATCH --mem=4G
#SBATCH --cpus-per-task=2

# genome = $1
# output = $2

# Activate conda environment
source activate eahelitron 



perl /mnt/apps/users/lwigley/EAHelitron/EAHelitron -o $2 -u 20000 $1 






