#include"ConfigFile.h"

//读取配置文件，一行一行读取，每一行配置文件以“=”进行分割，
//异常情况处理：
//1.去掉开头和结尾的空格和回车
//2.以"="进行分割，分割之后去掉两边的空格或者换行
//3.如何开头第一个字符为#，代表为注释，跳过
//4.如何一行中没有找到=也跳过
void ConfigFile::LoadConfig(const std::string&argv)
{

    //std::cout<<argv<<std::endl;
    //一行一行从argv中读取文件
    std::fstream f;
    f.open(argv.c_str(),std::ios::binary|std::ios::in);
    if(!f.is_open())
    {
        std::cout<<"LoadConfigFile:"<<argv<<"失败"<<std::endl;
        exit(EXIT_FAILURE);
    }
    std::string line;   //读取文件中读到的每一行
    while(getline(f,line))
    {
        //去除字符串前置空格和后置空格
        while(line.front()==' '||line.front()=='\n')
        {
            line.erase(line.begin(),line.begin()+1);
        }
        //去掉字符串后置空格和换行
        while(line.back()==' '||line.front()=='\n')
        {
            line.pop_back();
        }

        //此时配置文件就是一个正常的配置文件了
        //如果第一个字符为‘#’,说明该行为注释
        if(line.front()=='#')
        {
            continue;
        }
       // std::cout<<line<<std::endl;

        //以‘=’进行分割，如果找不到'='，跳过进行下一行读取
        int index=line.find("=");
        if(index==std::string::npos)
        {
            continue;
        }
        std::string key=line.substr(0,index);
        std::string val=line.substr(index+1);
        //现在前面和后面已经没有空格了，但是key后面和val前面依然可能有空格
        while(key.back()==' ')
        {
            key.pop_back();
        }
        while(val.front()==' ')
        {
            val.erase(val.begin(),val.begin()+1);
        }
        //std::cout<<"key:"<<key<<" val:"<<val<<std::endl;
        ConfigMap_.insert({key,val});
    }
}

//获取指定配置文件加载项
std::string ConfigFile::Load(const std::string&key)
{
    auto it=ConfigMap_.find(key);
    if(it==ConfigMap_.end())
    {
        return "";
    }
    return it->second;
}