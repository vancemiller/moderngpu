
include ../common.mk

all: build

build: benchmarksegsort

benchmarksegsort.o: benchmarksegsort.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarksegsort: benchmarksegsort.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarksegsort

clean:
	rm -f benchmarksegsort.o mgpucontext.o mgpuutil.o benchmarksegsort

clobber:
	clean

