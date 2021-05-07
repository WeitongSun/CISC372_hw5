pthreads: img_pthreads.c image.h
	gcc -g img_pthreads.c -o pt -lpthread -lm
openMP: img_openMP.c img_openMP.h
	gcc -g img_openMP.c -o omp -lm -fopenmp
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
	rm -f omp output.png
	rm -f pt output.png
