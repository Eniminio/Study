#include <stdio.h>
#include <string.h>
#include <arpa/inet.h>

void main(){
	struct sockaddr_in addr1, addr2;
	char *addr;
	char addr_arr[20];

	addr1.sin_addr.s_addr = htonl(0x01020304);
	addr2.sin_addr.s_addr = htonl(0x01010101);

	addr = inet_ntoa(addr1.sin_addr);
	strcpy(addr_arr, addr);
	printf("addr1 decpde: %s \n", addr);

	// 这里 addr 不用在此赋值就可以等于 inet_ntoa 的返回值，好奇怪？？？
	inet_ntoa(addr2.sin_addr);
	printf("addr decpde : %s \n", addr);
	printf("addr_arr : %s \n:", addr_arr);
}
