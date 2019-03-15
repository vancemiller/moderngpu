
include ../common.mk

all: build

build: benchmarksegreduce

benchmarksegreduce.o: benchmarksegreduce.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarksegreduce: benchmarksegreduce.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarksegreduce

clean:
	rm -f benchmarksegreduce.o mgpucontext.o mgpuutil.o benchmarksegreduce

clobber:
	clean

