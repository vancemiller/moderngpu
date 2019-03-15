
include ../common.mk

all: build

build: demo

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

demo.o: demo.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

demo: demo.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./demo

clean:
	rm -f demo.o mgpucontext.o mgpuutil.o demo

clobber:
	clean

