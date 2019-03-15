
include ../common.mk

all: build

build: benchmarkjoin

benchmarkjoin.o: benchmarkjoin.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkjoin: benchmarkjoin.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkjoin

clean:
	rm -f benchmarkjoin.o mgpucontext.o mgpuutil.o benchmarkjoin

clobber:
	clean

