#!/bin/bash

#SBATCH -J monte_carlo_pi  # Job Name
#SBATCH -o monte_carlo_pi_%a.o%j
#SBATCH --partition=windfall
#SBATCH -N 1 -n 1
#SBATCH --mem-per-cpu=4gb
#SBATCH --cpus-per-task=1
#SBATCH -t 0:30:00     # Run time (hh:mm:ss)
#SBATCH --array 0-10

module load python

./monte_carlo_pi.py 1000000000 $RANDOM
