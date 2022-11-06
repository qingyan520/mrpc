#设置需要添加的源文件
aux_source_directory(. SRC_LIST)
#生成动态库
set(LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/../lib)
add_library(mrpc SHARED ${SRC_LIST})
#设置目标要连接的库
target_link_libraries(mrpc protobuf)