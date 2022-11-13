#pragma once
#include<unordered_map>
#include<iostream>
#include<string>
#include<fstream>
class ConfigFile{
    public:

    //加载配置文件信息
    void LoadConfig(const std::string&argv);

    //获取指定key的配置文件
    std::string Load(const std::string&key);

    private:
    std::unordered_map<std::string,std::string>ConfigMap_;
};