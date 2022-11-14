#include"MrpcProvider.h"

void MrpcProvider::NotifyService(google::protobuf::Service*service){
    //得到每一个service提供者的名字，service对象，service里面的每一个方法名称和方法实现
    //然后保存到map表格中，当调用方调用的时候，就可以直接用服务名称和方法名称进行调用了

    //得到一个对象方法的描述，这样我们就可以利用这个指针得到这个服务对象的详细信息
    //比如对象名称，对象中每一个方法名称，方法
    const google::protobuf::ServiceDescriptor*serviceDescriptor=service->GetDescriptor();
    std::string service_name=serviceDescriptor->name();        
                                //得到服务对象名称
    ServiceInfo serviceInfo;
    serviceInfo.service_=service;
    //接下来得到所有方法集合
    for(int i=0;i<serviceDescriptor->method_count();i++)
    {
        const google::protobuf::MethodDescriptor*methodDescriptor=serviceDescriptor->method(i);   //得到该服务里面每一个方法的描述
        std::string method_name=methodDescriptor->name();                                         //得到方法名称
        serviceInfo.MethodMap_.insert({method_name,methodDescriptor});                            //插入到map表中
    }
    ServiceMap_.insert({service_name,serviceInfo});
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
        exit(EXIT_FAILURE);
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
    if(conn->connected())
    {
        std::cout<<conn->peerAddress().toIpPort()<<std::endl;
    }
    else
    {
        conn->shutdown();   //断开连接后释放TcpConnection,模拟http短链接
    }
}

//设置消息处理回调，主要进行数据的反序列化，等待执行完本次处理之后发送响应
void MrpcProvider::OnMessage(const muduo::net::TcpConnectionPtr&conn,muduo::net::Buffer*buf,muduo::Timestamp timestamp)
{
    //在这里我们需要解析对端传来的请求协议
    //请求格式如下所示：
    //请求头长度+请求服务名称+请求方法名称+请求正文长度+请求正文
    //在这个我们让一个字符串前四个字节存储请求头长度n，这样从4字节开始读取n各字节就是请求头长度
    //解析请求头得到服务名称+方法名称+正文长度，我们从4+n的位置开始读取正文长度，这样就得到请求正文
    //这样做主要是为了防止Tcp粘包问题的发生
    std::string msg=buf->retrieveAllAsString();
    int head_size=0;
    msg.copy((char*)&head_size,4,0);            //得到msg前4各字节数据，这里利用msg的copy函数，一点小技巧，比自己用字符串之类更加实用
    
    std::string message_header=msg.substr(4,head_size); //得到消息头
    MessageHeader MsgHeader;
    if(!MsgHeader.ParseFromString(message_header))   //解析请求头
    {
        std::cout<<conn->peerAddress().toIpPort()<<": ParseFromString:"<<message_header<<" error!"<<std::endl;
        return ;
    }

    std::string service_name=MsgHeader.service_name();   //得到请求服务的名称
    std::string method_name=MsgHeader.method_name();     //得到请求方法名称
    int body_size=MsgHeader.body_size();                 //得到请求正文长度   
    std::string body=msg.substr(4+head_size,body_size);  //得到请求正文

    //现在就根据请求方法名称在map表中寻找对应的服务是否存在
    std::unordered_map<std::string,ServiceInfo>::iterator service_iterator=ServiceMap_.find(service_name);
    if(service_iterator==ServiceMap_.end())
    {
        std::cout<<"The service:"<<service_name<<"not exists in this RpcNode"<<std::endl;
        return;
    }
    //现在确定在这个节点上有这个服务了，接下来确定早这个服务里面是否有这个方法
    std::unordered_map<std::string,const google::protobuf::MethodDescriptor*>::iterator method_iterator=service_iterator->second.MethodMap_.find(method_name);
    if(method_iterator==service_iterator->second.MethodMap_.end())
    {
        std::cout<<"The service "<<service_name<<"has not  this method "<<method_name<<"!"<<std::endl;
        return;
    }
    //现在method_iterator的second就是MethodDescriptor，就可以通过这个方法得到对应方法的请求参数和返回参数，然后调用对应的方法了
    const google::protobuf::MethodDescriptor*methodDescriptor=method_iterator->second;  
    //现在就是进行请求参数序列化和相应参数序列化了
    google::protobuf::Message*RequestMessage=service_iterator->second.service_->GetRequestPrototype(methodDescriptor).New();    //得到对应方法的请求参数
    google::protobuf::Message*ResponseMessage=service_iterator->second.service_->GetResponsePrototype(methodDescriptor).New();  //得到对应方法的响应参数
    //现在知道所约定的rpc响应和请求类型了，接下来反序列化请求参数到RequestMessage当中去
    if(!RequestMessage->ParseFromString(body))
    {
        std::cout<<"RequestMessage Parse from \""<<body<<"\""<<"error!"<<std::endl;
        return ;
    }
    //接下来就是处理进行本地业务处理，然后发送返回值就ok了,Rcp会根据method方法执行我们所写的函数，然后发送响应
    service_iterator->second.service_->CallMethod(methodDescriptor,nullptr,RequestMessage,ResponseMessage,nullptr);
}