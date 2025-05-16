#!/bin/bash
# the following must be performed with root privilege
# >>> sudo sh scripts/stop_mps.sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <mps_dir>"
    echo "bash $0 /workspace/dyserve_scheduler/dyserve/logs/mps"
    error 1
fi

MPSDIR=$1

echo quit | nvidia-cuda-mps-control
pkill -f nvidia-cuda-mps-control

rm -rf ${MPSDIR}/nvidia-mps
rm -rf ${MPSDIR}/nvidia-log