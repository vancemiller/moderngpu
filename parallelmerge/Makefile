
include ../common.mk

all: build

build: parallelmerge

parallelmerge.o: parallelmerge.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

parallelmerge: parallelmerge.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./parallelmerge

clean:
	rm -f parallelmerge.o mgpucontext.o mgpuutil.o parallelmerge

clobber:
	clean

