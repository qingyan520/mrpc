#include"user.pb.h"
#include"MrpcApplication.h"
#include"MrpcProvider.h"
#include<string>

class UserService:public test::UserServiceRpc {
    public:
    bool Login(const std::string&name,const std::string&pwd)
    {
        std::cout<<"---------Login----------"<<std::endl;
        std::cout<<"-----name:"<<name<<" pwd:"<<pwd<<std::endl;
        std::cout<<"Login处理业务完毕"<<std::endl;
        return true;
    }
     void Login(::google::protobuf::RpcController* controller,
                       const ::test::LoginRequest* request,
                       ::test::LoginResponse* response,
                       ::google::protobuf::Closure* done){
        //序列化Rpc请求
        std::string name=request->name();
        std::string pwd=request->pwd();

        //在本地机器上进行处理
        bool result_login=Login(name,pwd);
        std::cout<<"服务端处理业务完成，填充返回值"<<std::endl;
        //填充返回值
        test::ResultCode*ret=response->mutable_result();
        ret->set_errcode(0);
        ret->set_errmsg("hello");
        response->set_success(result_login);

        std::cout<<"填充返回值成功,进行发送中"<<std::endl;
        //交给框架进行序列化与发送
        done->Run();
    }
};
int main(int argc,char**argv)
{
    //框架初始化
    MrpcApplication::Init(argc,argv);

    //provider是一个rpc网络服务对象
    //把UserService对象发布到rpc节点上
    MrpcProvider provider;
    provider.NotifyService(new UserService());

    //启动一个rpc,Run以后，进程进入阻塞状态，等待远程rpc的请求
    provider.Run();
    return 0;
}