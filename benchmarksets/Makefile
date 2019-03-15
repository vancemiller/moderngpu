
include ../common.mk

all: build

build: benchmarksets

benchmarksets.o: benchmarksets.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarksets: benchmarksets.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarksets

clean:
	rm -f benchmarksets.o mgpucontext.o mgpuutil.o benchmarksets

clobber:
	clean

