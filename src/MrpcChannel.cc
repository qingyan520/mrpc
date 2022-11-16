#include"MrpcChannel.h"

//重写CallMethod方法
void MrpcChannel::CallMethod(const google::protobuf::MethodDescriptor*method,
                             google::protobuf::RpcController*controller,const google::protobuf::Message*request,
                             google::protobuf::Message*response,google::protobuf::Closure*done){
    //调用客户端的Stub(Rcp方法代理类)必须使用RpcChannel进行初始化构造
    //实际上Stub在内部调用RpcChannel的CallMethod方法
    //因此我们必须重写CallMethod方法，用于序列化数据和网络发送，然后阻塞等待接受数据处理完毕后的响应
    //这里客户端使用并不涉及高并发，所以使用Linux的套接字通信即可
    
    //进行数据的序列化：请求头长度+请求服务名称+请求方法名称+请求正文长度+请求正文
    std::string service_name=method->service()->name();                     //得到请求服务对象名称
    std::string method_name=method->name();                                 //返回请求方法名称
    //序列化请求
    std::string request_body;
    if(!request->SerializeToString(&request_body))
    {
        std::cout<<"CallMethod::request->SerializeToString error"<<std::endl;
        return;
    }

    //序列化请求头
    MessageHeader msg_header;
    msg_header.set_service_name(service_name);     //设置请求服务名称
    msg_header.set_method_name(method_name);       //设置请求方法名称
    msg_header.set_body_size(request_body.size());  //设置正文长度

    std::string header;
    if(!msg_header.SerializeToString(&header))
    {
        std::cout<<"CallMethod::msg->header.SerializeToString error!"<<std::endl;
        return;
    }

    std::string send_request;           //要发送的请求
    int header_size=header.size();
    
    std::cout<<"header_size:"<<header_size<<std::endl;
    send_request.insert(0,(char*)&header_size,4);   //前4个字节存储请求头长度
    std::cout<<"send_request.size():"<<send_request.size()<<std::endl;
    for(int i=0;i<send_request.size();i++)
    {
        std::cout<<send_request[i]<<"|";
    }
    std::cout<<std::endl;
    std::cout<<"1.send_request:"<<send_request<<std::endl;
    send_request+=header;               //拼接请求头
    std::cout<<"2.send_request:"<<send_request<<std::endl;
    send_request+=request_body;         //拼接请求正文
    std::cout<<"3.send_request:"<<send_request<<std::endl;
    //数据的序列化已经完成了，接下来就是建立网络连接，发送数据，然后接受数据了
    //简单的Tcp客户端编程
    int sockfd=socket(AF_INET,SOCK_STREAM,0);
    if(sockfd<0)
    {
        std::cout<<"create sockfd error!"<<std::endl;
        return;
    }

    //读取对端ip,port，注意这里后续改为从zookeeper客户端读取
    std::string ip=MrpcApplication::GetConfig().Load("server_ip");
    std::string port=MrpcApplication::GetConfig().Load("server_port");
    std::cout<<"connect "<<ip<<":"<<port<<std::endl;
    sockaddr_in addr;
    addr.sin_family=AF_INET;
    addr.sin_port=htons(atoi(port.c_str()));
    addr.sin_addr.s_addr=inet_addr(ip.c_str());

    if(connect(sockfd,(sockaddr*)&addr,sizeof(addr))<0)
    {
        std::cout<<"connect "<<ip<<":"<<port<<" error!"<<std::endl;
        return;
    }

    //现在连接成功进行数据发送
    int n=send(sockfd,send_request.c_str(),send_request.size(),0);
    if(n<0)
    {
        std::cout<<"send request:"<<send_request<<" error!"<<std::endl;
        return;
    }
    std::cout<<"send request success!:"<<send_request<<std::endl;
    //发送数据成功，现在就需要阻塞等待接受数据了
    std::string response_body;
    char c;   //每次读取一个数据
    int recv_ret=recv(sockfd,&c,1,0);
    int i=1;
    while(1)
    {
        if(recv_ret==-1)
        {
            std::cout<<"recv error"<<std::endl;
            return;
        }
        if(recv_ret==0)
        {
            break;
        }
        std::cout<<"第"<<i++<<"次读取"<<std::endl;
        response_body.push_back(c);
        std::cout<<response_body<<std::endl;
        recv_ret=recv(sockfd,&c,1,0);
    }

    //序列化
    if(!response->ParseFromString(response_body))
    {
        std::cout<<"CallMethod::response->ParseFromString error!"<<std::endl;
        return;
    }
    std::cout<<"repsonse->ParseFromString success!"<<std::endl;
}