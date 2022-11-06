#include"test.pb.h"
#include<string>
int main()
{
    test::LoginRequest rsq;
    rsq.set_name("张三");
    rsq.set_pwd("1234");
    std::string str;
    std::cout<<rsq.SerializeToString(&str)<<std::endl;
    std::cout<<str<<std::endl;
}