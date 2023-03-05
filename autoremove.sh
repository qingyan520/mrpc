#! /bin/sh

set -e

# 检查目录是否存在
if [ -d "/usr/local/include/mrpc" ]; then
  # 删除目录
  sudo rm -rf /usr/local/include/mrpc
  echo "/usr/local/include/mrpc删除成功"
else
  echo "/usr/local/include/mrpc不存在"
fi

if [ -f /usr/local/lib/libmrpc.a ]; then
    sudo rm /usr/local/lib/libmrpc.a
    echo "/usr/local/lib/libmrpc.a 删除成功"
else 
    echo "/usr/local/lib/libmrpc.a 不存在"
fi
