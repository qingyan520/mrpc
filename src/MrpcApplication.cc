#include"MrpcApplication.h"
#include<unistd.h>

static void ShowArgHelp(){
      std::cout<<"format -i <configfile>"<<std::endl;
}
//初始化框架
void MrpcApplication::Init(int argc,char**argv){
    if(argc<2)
    {
        ShowArgHelp();
        exit(EXIT_FAILURE);
    }

    int c=0;
    while(c);
    //加载配置文件：配置文件内容如下所示：
    //rpcserver_ip=
    //rpcserver_port=
    //zookeeper_ip=
    //zookeeper_port=

}