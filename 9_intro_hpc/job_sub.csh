#!/bin/bash
# --------------------
### Directives Section
# --------------------
#SBATCH --job-name=hello_world
##SBATCH --account=<your_group>
##SBATCH --partition=standard
#SBATCH --partition=windfall
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:01:00
# --------------------
### Code Section
# --------------------
echo "Hello world, I am running on compute node $HOSTNAME"
# sleep only used for demonstration purposes
sleep 30
