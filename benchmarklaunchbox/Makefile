
include ../common.mk

all: build

build: benchmarklaunchbox

benchmarklaunchbox.o: benchmarklaunchbox.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarklaunchbox: benchmarklaunchbox.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarklaunchbox

clean:
	rm -f benchmarklaunchbox.o mgpucontext.o mgpuutil.o benchmarklaunchbox

clobber:
	clean

