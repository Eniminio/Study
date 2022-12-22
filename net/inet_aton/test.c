#include <stdio.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <string.h>

void main(){
       struct sockaddr_in addr;
       printf("sieze1 :%lu \n", sizeof(addr));
       memset(&addr, 0, sizeof(addr));
       addr.sin_family = AF_INET;
       addr.sin_port = htons(9000);
       // inet_aton 返回值是 int，0为错误情况，1为 suc
       // addr.sin_addr = inet_aton("127.0.0.1", &addr.sin_addr); 错误X
       inet_aton("127.0.0.1", &addr.sin_addr);
       printf("size : %lu \n", sizeof(addr));
}
