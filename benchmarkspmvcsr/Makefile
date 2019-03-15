
include ../common.mk

all: build

build: benchmarkspmvcsr

benchmarkspmvcsr.o: benchmarkspmvcsr.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

mmio.o: ../src/mmio.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

sparsematrix.o: ../src/sparsematrix.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkspmvcsr: benchmarkspmvcsr.o mgpucontext.o mgpuutil.o mmio.o sparsematrix.o
	hipcc $(hipccFLAGS) -o $@ $+ -lcusparse

run: build
	./benchmarkspmvcsr

clean:
	rm -f benchmarkspmvcsr.o mgpucontext.o mgpuutil.o benchmarkspmvcsr

clobber:
	clean

