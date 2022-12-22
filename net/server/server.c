#include <sys/socket.h>

void main(){
	struct sockaddr_in addr;
	char *port = "9000";
	int listen_sock;

	listen_sock = socket(PF_INET, SOCK_STREAM, 0);

	// 初始化 addr 结构体，用 0 填充
	memset(&addr, 0, sizeof(addr));
	addr.sin_port = htons(atoi(port));
	addr.sin_addr = inet_aton(INADDR_ANY);
	addr.sin_family = AF_INET;
	
	bind(listen_sock, (struct sockaddr *)&addr, sizeof(addr));
}
