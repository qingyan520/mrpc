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

    test::LoginResponse rsp;
    test::ResultCode*p=rsp.mutable_result();
    p->set_errcode("1");
    p->set_errmsg("hello world");
    rsp.set_succuss(true);
    rsp.SerializeToString(&str);
    std::cout<<str<<std::endl;
}