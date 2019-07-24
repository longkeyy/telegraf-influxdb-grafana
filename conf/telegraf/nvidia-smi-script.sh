#!/bin//sh
if [-z $1];then
    echo 0
else       
    nvidia-smi --format=csv,noheader,nounits --query-gpu=$1 | awk '{sum +=$1};END {print sum}'
fi

