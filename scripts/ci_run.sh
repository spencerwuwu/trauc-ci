#!/bin/bash

# Executed within Container
# COPY while installing benchmarks
TARGET=$1
BENCHMARK_TARGET=$2
cd ${BENCHMARK_PATH}/

python3.6 check_benchmark -c=$TARGET "${BENCHMARK_TARGET}/" > /dev/null
python3.6 compare_benchmark_logs $BENCHMARK_TARGET
