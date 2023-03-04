#pragma once
#include "LockQueue.h"
#include<string>
#include<thread>
//三种日志级别，
//INFO     //正常
//WARNING  //警告
//FATAL    //错误
#define INFO 99991
#define WARNING 99992
#define FATAL 99993
#define LOG(Level,message) Log::GetInstance().log(#Level,message,__FILE__,__FUNCTION__,__LINE__)
//设置为单例模式，然后利用宏定义进行书写
class Log{
    public:
    void log(std::string levle,std::string message,std::string file_name,std::string function_name,int line);

    static Log&GetInstance(){
        static Log log_;
        return log_;
    }
    private:
    LockQueue<std::string> q_;
    Log();
    Log&operator=(const Log&)=delete;
    Log(const Log&)=delete;
};