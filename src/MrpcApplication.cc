#include"MrpcApplication.h"
#include<unistd.h>

ConfigFile MrpcApplication::config_;
static void ShowArgHelp(){
      std::cout<<"format -i <configfile>"<<std::endl;
}
//初始化框架
void MrpcApplication::Init(int argc,char*argv[]){
    if(argc!=3)
    {
        ShowArgHelp();
        exit(EXIT_FAILURE);
    }
    
    //判断命令行参数是否合理
    int c=0;
    std::string str;
    if(getopt(argc,argv,"i:")!=-1)
    {
        str=optarg;
    }
    //加载配置文件：配置文件内容如下所示：
    //rpcserver_ip=
    //rpcserver_port=
    //zookeeper_ip=
    //zookeeper_port=
    
    config_.LoadConfig(str);
    //std::cout<<"zookeeper_ip:"<<config_.Load("zookeeper_ip")<<std::endl;
    //std::cout<<"zookeeper_port:"<<config_.Load("zookeeper_port")<<std::endl;
    //std::cout<<"server_ip:"<<config_.Load("server_ip")<<std::endl;
    //std::cout<<"server_port:"<<config_.Load("server_port")<<std::endl;
}