#设置需要添加的源文件
aux_source_directory(. SRC_LIST)

#生成动态库
add_library(mrpc  ${SRC_LIST})
target_link_libraries(mrpc muduo_net muduo_base protobuf pthread)