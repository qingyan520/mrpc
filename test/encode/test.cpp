#include<iostream>
#include<string>
using namespace std;
int main()
{
    int a=25;
    string str;
    str.insert(0,(char*)&a,4);
    cout<<"str="<<str<<endl;
    int b=0;
    str.copy((char*)&b,4,0);
    cout<<"b="<<b<<endl;
    return 0;
}