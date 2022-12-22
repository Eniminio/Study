#include <sys/socket.h>

void main(){
	struct sockaddr_in addr;
	char *serv_port = "9000";
	memset(%addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = htonl(INADDR_ANY);
	addr.sin_port = htons(atoi(serv_port));
}
