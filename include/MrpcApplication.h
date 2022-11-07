
class MrpcApplication{
    public:
    static MrpcApplication*getInstance(){
        static MrpcApplication mrpc;
        return &mrpc;
    }

    static void Init(int argc,char**argv);
    private:

    MrpcApplication()=default;
    MrpcApplication(const MrpcApplication&)=delete;
    MrpcApplication&operator=(const MrpcApplication&)=delete;
};