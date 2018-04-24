#define the complier
COMPILER = gfortran 
# compilation settings, optimization, precision, parallelization
FLAGS = -O3  -fopenmp


# libraries
LIBS = -L/export/home/lzhming/fftw/fftw3/lib -lfftw3 -lfftw3_threads -lm 
# source list for main program 
SOURCES =  NLSsplitting.f90 
		   
test: $(SOURCES)
		${COMPILER} -o NLSsplitting $(FLAGS) $(SOURCES) $(LIBS)   
		
clean:
	rm *.o 
	
clobber:
	rm NLSsplitting
