
include ../common.mk

all: build

build: benchmarksort

benchmarksort.o: benchmarksort.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarksort: benchmarksort.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarksort

clean:
	rm -f benchmarksort.o mgpucontext.o mgpuutil.o benchmarksort

clobber:
	clean

