#pragma once
#include<iostream>
#include"ConfigFile.h"

//框架初始化
class MrpcApplication{
    public:
    //设置单例模式读取配置文件
    static MrpcApplication*getInstance(){
        static MrpcApplication mrpc;
        return &mrpc;
    }

    //得到真正的读取配置文件的组件config;
    static void Init(int argc,char*argv[]);

    static ConfigFile&GetConfig()
    {
        return  config_;
    }

    private:
    MrpcApplication()=default;
    MrpcApplication(const MrpcApplication&)=delete;
    MrpcApplication&operator=(const MrpcApplication&)=delete;

    static ConfigFile config_;
};