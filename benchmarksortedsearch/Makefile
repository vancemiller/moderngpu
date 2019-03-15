include ../common.mk

all: build

build: benchmarksortedsearch

benchmarksortedsearch.o: benchmarksortedsearch.cu 
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarksortedsearch: benchmarksortedsearch.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarksortedsearch

clean:
	rm -f benchmarksortedsearch.o mgpucontext.o mgpuutil.o benchmarksortedsearch

clobber:
	clean

