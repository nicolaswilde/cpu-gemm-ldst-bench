#!/bin/bash

# single core
for tilem in 256 512 1024; do
    for tilen in 256 512 1024; do
        for tilek in 256 512 1024; do
            make SINGLE_CORE=1 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=1
            make SINGLE_CORE=1 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=1
            make SINGLE_CORE=1 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=0
            make SINGLE_CORE=1 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=0
        done
    done
done

# 4 cores
for tilem in 256 512 1024; do
    for tilen in 256 512 1024; do
        for tilek in 256 512 1024; do
            make MULTI_CORE=1 CORES_M=2 CORES_N=2 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=1
            make MULTI_CORE=1 CORES_M=2 CORES_N=2 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=1
            make MULTI_CORE=1 CORES_M=2 CORES_N=2 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=0
            make MULTI_CORE=1 CORES_M=2 CORES_N=2 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=0
        done
    done
done

# 16 cores
for tilem in 256 512 1024; do
    for tilen in 256 512 1024; do
        for tilek in 256 512 1024; do
            make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=1
            make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=1
            make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=$tilem TN=$tilen TK=$tilek LOAD_C=1 STORE_C=0
            make MULTI_CORE=1 CORES_M=4 CORES_N=4 TM=$tilem TN=$tilen TK=$tilek LOAD_C=0 STORE_C=0
        done
    done
done