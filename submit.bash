#!/bin/bash
#SBATCH -J Fourier
#SBATCH -A cs475-575
#SBATCH -p classmpitest
#SBATCH -N 8 # number of nodes
#SBATCH -n 8 # number of tasks
#SBATCH -o mpiproject.out
#SBATCH -e mpiproject.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=thonh@oregonstate.edu
module load openmpi
mpic++ proj07.cpp -o proj07 -lm
mpiexec -mca btl self,tcp -np 4 ./proj07
