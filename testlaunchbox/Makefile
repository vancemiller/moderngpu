
include ../common.mk

all: build

build: testlaunchbox

testlaunchbox.o: testlaunchbox.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

testlaunchbox: testlaunchbox.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./testlaunchbox

clean:
	rm -f testlaunchbox.o mgpucontext.o mgpuutil.o testlaunchbox

clobber:
	clean

