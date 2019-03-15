
include ../common.mk

all: build

build: benchmarkmerge

benchmarkmerge.o: benchmarkmerge.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkmerge: benchmarkmerge.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkmerge

clean:
	rm -f benchmarkmerge.o mgpucontext.o mgpuutil.o benchmarkmerge

clobber:
	clean

