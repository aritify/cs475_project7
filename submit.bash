#!/bin/bash
#SBATCH -J Fourier
#SBATCH -A cs475-575
#SBATCH -p classmpitest
#SBATCH -N 8 # number of nodes
#SBATCH -n 8 # number of tasks
#SBATCH -o proj07.out
#SBATCH -e proj07.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=thongh@oregonstate.edu
module load openmpi
mpic++ proj07.cpp -o proj07 -lm
for p in 1 2 4 6 8
do
  mpiexec -np $4 ./proj07
done
