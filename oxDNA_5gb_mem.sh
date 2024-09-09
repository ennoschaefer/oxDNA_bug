#!/bin/bash
#SBATCH --partition=single
#SBATCH --time=01:00:00
#SBATCH --mem=5gb
#SBATCH --gres=gpu:1

module load devel/cuda
INPUT_FILE=$1
oxDNA $INPUT_FILE