#include<google/protobuf/service.h>
#include<string>
//RpcController负责标识Rpc方法调用错误原因，让客户端获知Rpc方法是否调用成功
class MrpcController:public google::protobuf::RpcController{
    public:
    MrpcController();
    ~MrpcController();

    void Reset();
    bool Failed()const;
    std::string ErrorText() const;
    void StartCancel();
    void SetFailed(const std::string& reason);
    bool IsCanceled() const;
    void NotifyOnCancel(google::protobuf::Closure* callback);

    private:
    bool ErrorCode_;
    std::string ErrorText_;
};