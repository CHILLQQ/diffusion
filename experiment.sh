#!/bin/bash
#SBATCH -n 1
#SBATCH -p preempt
#SBATCH --gres=gpu:a100:1
#SBATCH -t 04:00:00
##SBATCH --gres=gpu:1
#SBATCH --mem=16g
#SBATCH -o dump/log_%j.out # Write stdout to file named log_JOBIDNUM.out in log dir
#SBATCH -e dump/log_%j.err # Write stderr to file named log_JOBIDNUM.err in log dir
##SBATCH --array=0-23%30

source ~/.bashrc
conda activate bdl_2022f_env

python main.py
