#!/bin/bash

for tilem in 256 512 1024; do
    for tilen in 256 512 1024; do
        for tilek in 256 512 1024; do
            make -C single-core TM=$tilem TN=$tilen TK=$tilek
        done
    done
done

for sqrt_cores in 1 2 4; do
    for tilem in 256 512 1024; do
        for tilen in 256 512 1024; do
            for tilek in 256 512 1024; do
                make -C multi-core CORES_M=$sqrt_cores CORES_N=$sqrt_cores \
                        TM=$tilem TN=$tilen TK=$tilek
            done
        done
    done
done