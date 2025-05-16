#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <mps_dir> <percentage>"
    echo "source dyserve/scripts/client_mps_env.sh /workspace/dyserve_scheduler/dyserve/logs/mps 20"
    echo "ERROR: Invalid number of arguments"
fi

MPSDIR=$1
MPS_PERCENTAGE=$2

export CUDA_MPS_PIPE_DIRECTORY=${MPSDIR}/nvidia-mps
export CUDA_MPS_LOG_DIRECTORY=${MPSDIR}/nvidia-log

export CUDA_MPS_ACTIVE_THREAD_PERCENTAGE=${MPS_PERCENTAGE}
export CUDA_MPS_ENABLE_PER_CTX_DEVICE_MULTIPROCESSOR_PARTITIONING=1