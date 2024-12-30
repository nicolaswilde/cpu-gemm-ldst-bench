# use `make` to compile and run the program
# use `make TM=512 TN=512 TK=512` to specify the tiling parameters

# lock the cpu frequency for all cores
CPU_CORES ?= 240
CORE_LIST = $(shell seq 0 $(shell expr $(CPU_CORES) - 1))
FREQ ?= 2300000 # 2.3 GHz

# test cpu core id
CORE_ID ?= 0

# tiling parameters
TM ?= 512
TN ?= 512
TK ?= 512

CFLAG = -Ofast -march=native -fno-strict-aliasing -fopenmp \
		-DCORE_ID=$(CORE_ID) \
		-DTM=$(TM) -DTN=$(TN) -DTK=$(TK)

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