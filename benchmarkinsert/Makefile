
include ../common.mk

all: build

build: benchmarkinsert

benchmarkinsert.o: benchmarkinsert.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkinsert: benchmarkinsert.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkinsert

clean:
	rm -f benchmarkinsert.o mgpucontext.o mgpuutil.o benchmarkinsert

clobber:
	clean

