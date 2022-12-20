#include <stdio.h>

void main(){
	int weight[] = {[0] = 1, [1] = 2 };
	printf("weight = %ld \n", sizeof(weight));
	printf("weight[0] = %ld \n", sizeof(weight[0]));
}
