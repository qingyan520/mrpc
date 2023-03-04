#include"MrpcApplication.h"
int main(int argc,char*argv[])
{
    MrpcApplication::Init(argc,argv);
    std::string str=MrpcApplication::GetConfig().Load("server_ip");
    std::cout<<str<<std::endl;
    return 0;
}