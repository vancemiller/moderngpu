
include ../common.mk

all: build

build: benchmarkscan

benchmarkscan.o: benchmarkscan.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkscan: benchmarkscan.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkscan

clean:
	rm -f benchmarkscan.o mgpucontext.o mgpuutil.o benchmarkscan

clobber:
	clean

