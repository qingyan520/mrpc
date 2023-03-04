#include"ZookeeperUtil.h"
#include"MrpcApplication.h"
#include"Log.h"
#include<iostream>


//全局的watcher观察器       zkserver给zkclient的通知
void global_watcher(zhandle_t*zh,int type,int state,const char*path,void*watcherCtx){
    if(type==ZOO_SESSION_EVENT)     //回调的消息是和会话有关的消息类型
    {
        if(state==ZOO_CONNECTED_STATE){
             //zkclient和zkserver连接成功
             sem_t*sem=(sem_t*)zoo_get_context(zh);
             sem_post(sem);
        }
    }
}


zkClient::zkClient():m_zhandle(nullptr){

}

zkClient::~zkClient(){
    if(this->m_zhandle!=nullptr){
        zookeeper_close(m_zhandle);     //释放客户端和zkServer之间的连接
    }
}

//启动zl客户端连接zkServer
void zkClient::start(){
    //获取zk服务器的ip和端口
    std::string ip=MrpcApplication::getInstance()->GetConfig().Load("zookeeper_ip");
    std::string port=MrpcApplication::getInstance()->GetConfig().Load("zookeeper_port");
    std::string connstr=ip+":"+port;

    /*
        zookeeper_mt:多线程版本
        zookeeper的客户端API提供了3个线程：
        API调用
        网络I/O线程，pthread_create poll
        watcher回调线程
    */
   m_zhandle=zookeeper_init(connstr.c_str(),global_watcher,30000,nullptr,nullptr,0);
   if(nullptr==m_zhandle){
        std::cout<<"zookeeper_init error"<<std::endl;
        LOG(ERROR,"zookeeper_init error!");
        exit(EXIT_FAILURE);
   }

   //因为zookeeper_init函数是一个异步的操作，此时m_zhandle只能说是被分配内存了，不能代表与zkServer建立连接了
   //所以建立信号量等待zkclient和zkServer两者建立连接
   sem_t sem;
   sem_init(&sem,0,0);
   zoo_set_context(m_zhandle,&sem);

   sem_wait(&sem);
   LOG(INFO,"zookeeper_init success!");

}
//在zkClient上根据指定path创建znode节点
void zkClient::Create(const char*path,const char*data,int datalen,int state){
    char path_buffer[128];
    int bufferlen=sizeof(path_buffer);
    //先判断path表示的znode节点是否存在，如何存在就不创建了
    int flag;
    flag=zoo_exists(m_zhandle,path,0,nullptr);
    if(ZNONODE==flag){
        //表示znode节点不存在
        //创建指定znode节点
        flag=zoo_create(m_zhandle,path,data,datalen,&ZOO_OPEN_ACL_UNSAFE,state,path_buffer,bufferlen);
        if(flag==ZOK){
            LOG(INFO,"znode create success ... path:"+std::string(path));
        }
        else{
            LOG(INFO,"znode create error ... path:"+std::string(path));
            std::cout<<"znode create error ... path:"<<path<<std::endl;
            exit(EXIT_FAILURE);
        }
    }
}

//传入参数。获取指定znode节点路径，获取znode节点的值
std::string zkClient::GetData(const char*path){
    char buffer[1024];
    int  bufferlen=sizeof(buffer);
    int flag=zoo_get(m_zhandle,path,0,buffer,&bufferlen,nullptr);
    if(flag!=ZOK){
        LOG(WARNING,"get znode error ... path:"+std::string(path));
        std::cout<<"get znode error ... path:"<<path<<std::endl;
        return "";
    }
    else{
        return buffer;
    }
}