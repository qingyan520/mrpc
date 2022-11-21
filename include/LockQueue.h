#include<queue>
#include<condition_variable>
#include<mutex>

template<typename T>

//基于生产者消费者模型的线程安全的队列
class LockQueue{
    public:
    void push(const T&data){
        //获取到锁，
        std::unique_lock<std::mutex>lock_(mtx_);
        //测试在这里最好进行判断，
        cond_.wait(lock_,[&]()->bool{
            return q_.size()<INT32_MAX;
        });
        q_.push(data);
        cond_.notify_one();
    }   

    const T pop(){
        //只有当q_里面有东西的时候才可以进行pop，否则就一直阻塞等待
        std::unique_lock<std::mutex>lock_(mtx_);
        cond_.wait(lock_,[&]()->bool{
            return q_.size()>0;
        });
        const T data=q_.front();
        q_.pop();
        cond_.notify_all();
        return data;
    }
    private:
    std::queue<T>q_;
    std::mutex mtx_;
    std::condition_variable cond_;
};
