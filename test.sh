#!/bin/bash

# single core, test TM & TN
make SINGLE_CORE=1 TM=1024 TN=512 TK=512
make SINGLE_CORE=1 TM=512 TN=1024 TK=512

# 16 cores, test TM & TN
make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=1024 TN=512 TK=512
make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=512 TN=1024 TK=512

# 16 cores, test LOAD_C & STORE_C
make MULTI_CORE=1
make MULTI_CORE=1 LOAD_C=0
make MULTI_CORE=1 LOAD_C=0 STORE_C=0

# 16 cores TM/TN = 1024x512x512, PAD
make MULTI_CORE=1 APAD=0 BPAD=0 CPAD=0
make MULTI_CORE=1 APAD=64 BPAD=64 CPAD=16
make MULTI_CORE=1 APAD=1024 BPAD=1024 CPAD=256
make MULTI_CORE=1 APAD=4096 BPAD=4096 CPAD=1024
