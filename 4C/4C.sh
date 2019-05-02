#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --time=06-23
#SBATCH --partition=shas
#SBATCH --qos=long
#SBATCH --output=sample-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=saup0513

module load python
module load R
python main.py

module unload python
module unload R