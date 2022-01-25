#!/bin/sh -l

set -euo pipefail

DATABASE=$1
NGS_RUN=$2
ROOT=${PWD}
READS1=$ROOT/data/raw_data/$NGS_RUN
LOOP=$(basename -a $READS1/*_R1_*)

module load bioinfo-tools

mkdir -p $ROOT/data/processed_data/$NGS_RUN/$DATABASE

foo() {
echo -e "\tInitializing... \n\tUsing $DATABASE as database\n\tRunning reads from $READS1 \n\tFolder name: ${filename::3}"

igdiscover init --database $ROOT/data/databases/$DATABASE/${filename::3} --reads1 $READS1/$filename $ROOT/data/processed_data/$NGS_RUN/$DATABASE/${filename::3}


}

for filename in $LOOP; do foo $filename; done;

