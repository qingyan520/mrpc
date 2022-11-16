#include<google/protobuf/service.h>
#include<google/protobuf/descriptor.h>
#include<google/protobuf/message.h>
#include<iostream>
#include<sys/socket.h>
#include<unistd.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<string>
#include"MessageHeader.pb.h"
#include"MrpcApplication.h"
class MrpcChannel:public google::protobuf::RpcChannel{
    public:
    MrpcChannel()=default;
    ~MrpcChannel()=default;
    void CallMethod(const google::protobuf::MethodDescriptor* method,
                          google::protobuf::RpcController* controller, const google::protobuf::Message* request,
                          google::protobuf::Message* response, google::protobuf::Closure* done);
};