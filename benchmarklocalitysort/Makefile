include ../common.mk

all: build

build: benchmarklocalitysort

benchmarklocalitysort.o: benchmarklocalitysort.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarklocalitysort: benchmarklocalitysort.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarklocalitysort

clean:
	rm -f benchmarklocalitysort.o mgpucontext.o mgpuutil.o benchmarklocalitysort

clobber:
	clean

