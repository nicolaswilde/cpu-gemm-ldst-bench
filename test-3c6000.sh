#!/bin/bash

# single core
make SINGLE_CORE=1 TM=1024 TN=512 TK=512 FLUSH_CACHE_SIZE=100*1024*1024
make SINGLE_CORE=1 LOAD_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024
make SINGLE_CORE=1 STORE_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024
make SINGLE_CORE=1 LOAD_C=0 STORE_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024

# 16 cores
make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=1024 TN=512 TK=512 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024
make MULTI_CORE=1 LOAD_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024
make MULTI_CORE=1 STORE_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024
make MULTI_CORE=1 LOAD_C=0 STORE_C=0 CORE_STRIDE=2 FLUSH_CACHE_SIZE=100*1024*1024