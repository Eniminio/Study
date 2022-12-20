#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void test(int a, int b, int c, int d){
	a = 1;
	b = 2;
	c = 3;
	d = 4;
}
void main(){
	int a,b,c,d;
	test(a, b,c,d);
	printf("in main \n");
	FILE *fp = fopen("test.txt", "r+");
	char ch[255];
	//fputs( "this is fputs \n", fp);
	//fprintf(fp, "this is fprintf, pid = %d \n", getpid());
	
	int pid = fork();
	if (pid == 0){
		printf("%d \n",wait(&pid));
		printf("child pid = %d \n", getpid());
	//	fputs( "child fork puts \n", fp);
		printf("this is child, fp = %p \n", fp);
		fgets(ch, 255, (FILE*)fp);
		printf("child %s \n", ch);
	}else
	{
		printf("father pid = %d \n", getpid());
//		printf("%d \n",wait(&pid));
		printf("this is father, fp = %p \n", fp);
		fgets(ch, 255, (FILE*)fp);
		printf("father %s \n", ch);
	}

	fclose(fp);
}
