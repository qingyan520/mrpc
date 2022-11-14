#pragma once
#include<google/protobuf/service.h>
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
    void NotifyService(google::protobuf::Service*service);

    void Run();
    private:

    muduo::net::EventLoop loop;

    //设置新用户连接或者断开时候的回调
    void OnConnection(const muduo::net::TcpConnectionPtr&);
    //设置时间到来时候的回调
    void OnMessage(const muduo::net::TcpConnectionPtr&,muduo::net::Buffer*,muduo::Timestamp);
    //设置发送回调函数
};