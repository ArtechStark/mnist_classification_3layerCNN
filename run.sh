#!/bin/bash
#SBATCH -J jack
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 30:00:00
#SBATCH --gres=gpu:1
module load anaconda3/5.3.0
python mnist_classification_3layerCNN.py
