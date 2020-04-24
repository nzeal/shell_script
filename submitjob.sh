#!/bin/bash
#SBATCH --mem=246000
#SBATCH -J slurm_multinode_prova
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4   ## --we want to launch 4 mpi
#SBATCH --ntasks-per-socket=2 ## --has 2 socket into part

## --has to be equal to 32/(ntasks-per-node*ntasks-per-socke)
#SBATCH --cpus-per-task=4 

#SBATCH --gres=gpu:4
#SBATCH --time=00:10:00
##,beeond:1
#SBATCH --no-requeue
#SBATCH --partition=m100_usr_prod
#SBATCH -A cin_staff 
#SBATCH --mail-type=BEGIN,END,FAIL,ARRAY_TASKS
#SBATCH --mail-user=n.shukla@cineca.it

module purge
module load cuda
module li


echo "--------------------------------------------------"
echo "nodes: $SLURM_NODELIST                            "
echo "total nodes: $SLURM_NNODES                        "
echo "tasks per node: $SLURM_TASKS_PER_NODE             "
echo "cpus per task: $SLURM_CPUS_PER_TASK               "
echo "gpu id(s) on node: $SLURM_JOB_GPUS                "
echo "protocol: $PROTO                                  "
echo "rdma device: $RDMA_DEVICE                         "
echo "nn model: $MODEL                                  "
echo "data format: $FORMAT                              "
echo "batch size (GPU): $BS                             "
echo "--------------------------------------------------"


srun -n 4 --cpu-bind=core /m100/home/userinternal/nshukla1/stream_test/BabelStream/cuda-stream
