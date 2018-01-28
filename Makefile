algorithm: algorithm.c
	mpicc-TV -lm -fopenmp -o algorithm algorithm.c
mpi: algorithm.c
	mpicc -fopenmp -o algorithm algorithm.c -lm
sub: submit
submit: algorithm
	rm -f *.std*
	rm -f trace.ttf
	rm -f trace
	llsubmit small.job

clean:
	rm -f *.std*
	rm -f trace.ttf
	rm -f trace
	rm algorithm

ttf: trace
	tracesort trace