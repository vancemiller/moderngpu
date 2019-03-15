
include ../common.mk

all: build

build: benchmarkintervalmove

benchmarkintervalmove.o: benchmarkintervalmove.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkintervalmove: benchmarkintervalmove.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkintervalmove

clean:
	rm -f benchmarkintervalmove.o mgpucontext.o mgpuutil.o benchmarkintervalmove

clobber:
	clean

