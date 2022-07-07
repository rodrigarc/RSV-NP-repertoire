#!/bin/bash 
#SBATCH -A snic2021-22-604
#SBATCH -p core
#SBATCH -n 20
#SBATCH -o slurm.%N.%j.log
#SBATCH -t 0-12:00:00
#SBATCH -J ig-algn

set -euo pipefail
cd "$1"
igdiscover run -j ${SLURM_JOB_CPUS_PER_NODE}

