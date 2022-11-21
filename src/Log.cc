#include"Log.h"

#include<fstream>
#include<iostream>
#include<sys/types.h>
#include<sys/stat.h>
#include<unistd.h>



Log::Log(){

    //判断文件夹是否log是否存在，不存在就创建
    const char*dir="./log";
    if(-1==access(dir,0)){
        mkdir(dir,S_IRWXU|S_IRWXG|S_IROTH|S_IXOTH);
    }
    //启动守护线程，后台一直写日志
    std::thread writeLogTask([&]{
        while(1)
        {
            //获取日志信息
            const std::string data=q_.pop();

            //获取日期
            int pos=data.find(" ");
            std::string file_name=data.substr(1,pos-1);
            file_name="./log/"+file_name+".txt";               //日志存放在当前目录log文件夹下面，以日期命名
            std::fstream f(file_name.c_str(),std::ios::out|std::ios::app);
            if(!f.is_open()){
                std::cout<<file_name<<" 打开失败"<<std::endl;
            }
            else{
                f<<data<<std::endl;
            }
            f.close();
        }
    });
    writeLogTask.detach();
}

void Log::log(std::string levle,std::string message,std::string file_name,std::string function_name,int line){

    //显示当前时间
    char now[64]={0};
    time_t tt=time(nullptr);
    struct tm*ttime;
    ttime=localtime(&tt);
    strftime(now,64,"%Y-%m-%d %H:%M:%S",ttime);
    
    //组织日志字符串
    std::string log_str="[";
    log_str+=now;
    log_str+="][";
    log_str+=levle;
    log_str+="][";
    log_str+=message;
    log_str+="][";
    log_str+=file_name;
    log_str+="][";
    log_str+=function_name;
    log_str+="][";
    log_str+=std::to_string(line);
    log_str+="]";

    q_.push(log_str);
}   