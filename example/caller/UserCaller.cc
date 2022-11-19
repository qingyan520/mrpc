#include"user.pb.h"
#include"MrpcChannel.h"
#include<iostream>
using namespace std;

int main(int argc,char*argv[])
{
    MrpcApplication::Init(argc,argv);
    //google::protobuf::RpcChannel;
   // test::UserServiceRpc_Stub service;
   test::UserServiceRpc_Stub service(new MrpcChannel);
    MrpcController*controller=new MrpcController;
   test::LoginRequest request;
   request.set_name("张三");
   request.set_pwd("123456");
   test::LoginResponse response;
   service.Login(controller,&request,&response,nullptr);
   if(controller->Failed())
   {
        std::cout<<controller->ErrorText()<<std::endl;
   }
   else
   {
        test::ResultCode code=response.result();
        std::cout<<code.errcode()<<" :"<<code.errmsg()<<std::endl;
        std::cout<<response.success()<<std::endl;
   }
   return 0;
}