#pragma once
#include<iostream>
class MrpcApplication{
    public:
    //设置单例模式读取配置文件
    static MrpcApplication*getInstance(){
        static MrpcApplication mrpc;
        return &mrpc;
    }

    //得到真正的读取配置文件的组件config;
    

    static void Init(int argc,char**argv);
    private:

    MrpcApplication()=default;
    MrpcApplication(const MrpcApplication&)=delete;
    MrpcApplication&operator=(const MrpcApplication&)=delete;
};