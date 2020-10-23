#!/bin/bash
#SBATCH --account=project_2000745
#SBATCH --ntasks=4
#SBATCH --time=00:15:00
#SBATCH --gres=gpu:v100:1
#SBATCH --partition=gpu
#SBATCH --reservation=openacc2020

module load pgi/19.7 cuda/10.1.168

srun ./hello

# Submit to the batch job queue with the command:
#  sbatch job.sh

# or alternatively, run directly from the command line:
#  srun --account=project_2000745 --ntasks=1 --time=00:15:00 --gres=gpu:v100:1 \
#       --partition=gputest ./hello
