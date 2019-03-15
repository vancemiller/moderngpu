
include ../common.mk 

all: build

build: benchmarkreducebykey

benchmarkreducebykey.o: benchmarkreducebykey.cu 
	hipcc $(hipccFLAGS) -o $@ -c $< -IThrust

mgpucontext.o: ../src/mgpucontext.cu
	hipcc $(hipccFLAGS) -o $@ -c $<

mgpuutil.o: ../src/mgpuutil.cpp
	hipcc $(hipccFLAGS) -o $@ -c $<

benchmarkreducebykey: benchmarkreducebykey.o mgpucontext.o mgpuutil.o
	hipcc $(hipccFLAGS) -o $@ $+

run: build
	./benchmarkreducebykey

clean:
	rm -f benchmarkreducebykey.o mgpucontext.o mgpuutil.o benchmarkreducebykey

clobber:
	clean

