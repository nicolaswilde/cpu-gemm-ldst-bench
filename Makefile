# use `make` to compile and run the program
# use `make CORES_M=4 CORES_N=4` to specify the number of cores to test
# use `make TM=512 TN=512 TK=512` to specify the tiling parameters

# lock the cpu frequency for all cores
CPU_CORES ?= 240
CORE_LIST = $(shell seq 0 $(shell expr $(CPU_CORES) - 1))
FREQ ?= 2300000 # 2.3 GHz

# CACHELINE: cache line size
CACHELINE ?= 64

# TM, TN, TK: tile size
TM ?= 1024
TN ?= 512
TK ?= 512

# SINGLE_CORE, MULTI_CORE: test single core or multi-core performance
#     10: single core
#     01: multi-core
SINGLE_CORE ?= 0
MULTI_CORE ?= 0

# default to multi-core mode
ifeq ($(SINGLE_CORE), 0)
ifeq ($(MULTI_CORE), 0)
MULTI_CORE = 1
endif
endif

# CORES_M, CORES_N:
#     number of tested cores in M and N dimension under MULTI_CORE mode
CORES_M ?= 4
CORES_N ?= 4

# CORE_START, CORE_STRIDE:
#     start and stride of tested core id under MULTI_CORE mode
#     set CORE_STRIDE = 2 if core 0 and core 1 are the same phisical core
CORE_START ?= 0
CORE_STRIDE ?= 1

# LOAD_C, LOAD_AB, STORE_C:
#     111: C = A * B + C
#     011: C = A * B
#     010: A * B main loop
LOAD_C ?= 1
LOAD_AB ?= 1
STORE_C ?= 1

# FLUSH_CACHE: flush cache before each kernel execution
FLUSH_CACHE ?= 1

# FLUSH_CACHE_SIZE: default 1 GB
FLUSH_CACHE_SIZE ?= 1024*1024*1024

# APAD, BPAD, CPAD: padding elements for A, B, C
APAD ?= 0
BPAD ?= 0
CPAD ?= 0

CFLAG = -Ofast -march=native -fno-strict-aliasing -fopenmp \
        -DCACHELINE=$(CACHELINE) \
		-DTM=$(TM) -DTN=$(TN) -DTK=$(TK) \
		-DSINGLE_CORE=$(SINGLE_CORE) -DMULTI_CORE=$(MULTI_CORE) \
		-DCORES_M=$(CORES_M) -DCORES_N=$(CORES_N) \
		-DCORE_START=$(CORE_START) -DCORE_STRIDE=$(CORE_STRIDE) \
		-DLOAD_C=$(LOAD_C) -DLOAD_AB=$(LOAD_AB) -DSTORE_C=$(STORE_C) \
		-DFLUSH_CACHE=$(FLUSH_CACHE) -DFLUSH_CACHE_SIZE=$(FLUSH_CACHE_SIZE) \
		-DAPAD=$(APAD) -DBPAD=$(BPAD) -DCPAD=$(CPAD)

BIN = amx-gemm
CFILES = amx-gemm.c

PERFFLAGS = -e L1-dcache-loads,L1-dcache-load-misses \
            -e l2_request.all,l2_request.miss \
			-e LLC-loads,LLC-load-misses

all: compile objdump run

compile:
	$(CC) $(CFLAG) $(CFILES) -o $(BIN) $(LIBS)

run:
	$(MAKE) lockfreq
	./$(BIN)
	$(MAKE) unlockfreq

perf:
	$(MAKE) lockfreq
	sudo perf stat $(PERFFLAGS) ./$(BIN)
	$(MAKE) unlockfreq

objdump:
	objdump -d $(BIN) > $(BIN).s

lockfreq:
	for i in $(CORE_LIST); do \
		echo userspace | sudo tee /sys/devices/system/cpu/cpu$$i/cpufreq/scaling_governor > /dev/null; \
		echo $(FREQ) | sudo tee /sys/devices/system/cpu/cpu$$i/cpufreq/scaling_setspeed > /dev/null; \
	done

unlockfreq:
	for i in $(CORE_LIST); do \
		echo ondemand | sudo tee /sys/devices/system/cpu/cpu$$i/cpufreq/scaling_governor > /dev/null; \
	done

clean:
	-rm $(BIN)

.PHONY: all compile run perf objdump lockfreq unlockfreq clean