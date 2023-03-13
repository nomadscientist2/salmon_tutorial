#!/bin/bash

for i in *_R1.fastq.gz
do
   prefix=$(basename $i _R1.fastq.gz)
   salmon quant -i chr22_index --libType A \
          -1 ${prefix}_R1.fastq.gz -2 ${prefix}_R2.fastq.gz -o ../quant/${prefix};
done