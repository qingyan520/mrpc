//zookeeper客户端代码封装

#pragma once
#include<semaphore.h>
#include<zookeeper/zookeeper.h>
#include<string>


//封装zookeeper客户端

class zkClient{
    public:
    zkClient();
    ~zkClient();

    //启动zl客户端连接zkServer
    void start();
    //在zkClient上根据指定path创建znode节点
    void Create(const char*path,const char*data,int datalen,int state=0);
    //传入参数。获取指定znode节点路径，获取znode节点的值
    std::string GetData(const char*path);

    private:
    zhandle_t*m_zhandle;

};