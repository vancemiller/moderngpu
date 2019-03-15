
include ../common.mk

all: build

build: benchmarkloadbalance

benchmarkloadbalance.o: benchmarkloadbalance.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkloadbalance: benchmarkloadbalance.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkloadbalance

clean:
	rm -f benchmarkloadbalance.o mgpucontext.o mgpuutil.o benchmarkloadbalance

clobber:
	clean

