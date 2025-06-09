ssh username.access.engr.oregonstate.edu
ssh submit-c.hpc.engr.oregonstate.edu
  // type immediately to set path correctly
  module load slurm
  module load openmpi
mpic++ -o program program.cpp -lm
mpiexec -mca btl self,tcp -np #ofCPUS ./program
