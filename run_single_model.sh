#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=1:00:00
#SBATCH --mem=4GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=nlp_project
#SBATCH --mail-type=END
##SBATCH --mail-user=apo249@nyu.edu
#SBATCH --output=slurm_%j.out


module purge
module load python3/intel/3.6.3 cudnn/9.0v7.3.0.29
source ~/pyenv/py3.6.3/bin/activate

python roberta_fine_tune.py --task_name sst2
