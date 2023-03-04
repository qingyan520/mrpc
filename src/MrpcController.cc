#include"MrpcController.h"

MrpcController::MrpcController(){
    ErrorCode_=false;
    ErrorText_="";
}
MrpcController::~MrpcController(){

}

void MrpcController::Reset(){
    ErrorCode_=false;
    ErrorText_="";
}
bool MrpcController::Failed()const{
    return ErrorCode_;
}
std::string MrpcController::ErrorText() const{
    return ErrorText_;
}
    
void MrpcController::StartCancel(){

}
   
void MrpcController::SetFailed(const std::string& reason){
    ErrorCode_=true;
    ErrorText_=reason;
}

bool MrpcController::IsCanceled() const{
    return false;
}

void MrpcController::NotifyOnCancel(google::protobuf::Closure* callback){

}