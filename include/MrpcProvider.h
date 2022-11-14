#pragma once
#include<google/protobuf/service.h>
#include<google/protobuf/descriptor.h>
#include<muduo/net/TcpServer.h>
#include<muduo/net/TcpConnection.h>
#include<muduo/net/EventLoop.h>
#include<muduo/net/InetAddress.h>
#include<muduo/base/Timestamp.h>
#include<unordered_map>
#include<functional>
#include<string>
#include<thread>
#include"MrpcApplication.h"

class MrpcProvider{
    
    public:
    //用来注册服务
    void NotifyService(google::protobuf::Service*service);
    //启动一个rpc节点
    void Run();
    private:
    //muduo库必备组件，进行事件循环，mainLoop负责新用户的连接事件
    muduo::net::EventLoop loop;

    struct ServiceInfo{
        google::protobuf::Service*service_;
        std::unordered_map<std::string,const google::protobuf::MethodDescriptor*>MethodMap_;   //存储该服务对象所有的方法名称
    };
    //将每一个服务和其对应的名称存储到map表中，同时serveiceInfo中的map存储每一个服务对象的所有方法描述
    std::unordered_map<std::string,ServiceInfo>ServiceMap_;

    //设置新用户连接或者断开时候的回调
    void OnConnection(const muduo::net::TcpConnectionPtr&);
    //设置时间到来时候的回调
    void OnMessage(const muduo::net::TcpConnectionPtr&,muduo::net::Buffer*,muduo::Timestamp);
    //设置发送回调函数
};