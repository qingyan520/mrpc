#include"MrpcProvider.h"

void MrpcProvider::NotifyService(google::protobuf::Service*service){
        //得到每一个service提供者的名字，service对象，service里面的每一个方法名称和方法实现
        //然后保存到map表格中，当调用方调用的时候，就可以直接用服务名称和方法名称进行调用了
}

void MrpcProvider::Run(){
    //启动rpc服务器，设置读写回调，设置线程数量，进入事件循环
    //得到ip，port
    //这里后期进行改动，同时得到zookeeper的ip和地址，然后将服务注册到zookeeper上
    std::string ip=MrpcApplication::GetConfig().Load("server_ip");
    std::string port=MrpcApplication::GetConfig().Load("server_port");
    if(ip==""||port=="")
    {
        std::cout<<"GetConfig server_ip or server_port error!"<<std::endl;
    }
    muduo::net::InetAddress addr(ip,atoi(port.c_str()));
    //建立服务器用来接受远程连接，并且设置端口可以复用
    muduo::net::TcpServer svr(&loop,addr,"MrpcProvider",muduo::net::TcpServer::Option::kReusePort);

    //设置读写回调
    svr.setConnectionCallback(std::bind(&MrpcProvider::OnConnection,this,std::placeholders::_1));
    svr.setMessageCallback(std::bind(&MrpcProvider::OnMessage,this,std::placeholders::_1,std::placeholders::_2,std::placeholders::_3));

    //设置线程数量，一般为cpu核心数量
   svr.setThreadNum(std::thread::hardware_concurrency());

    //进入loop循环
    svr.start();
    loop.loop();
}


//设置连接回调
void MrpcProvider::OnConnection(const muduo::net::TcpConnectionPtr&conn)
{

}

//设置消息处理回调
void MrpcProvider::OnMessage(const muduo::net::TcpConnectionPtr&conn,muduo::net::Buffer*buf,muduo::Timestamp timestamp)
{
    
}