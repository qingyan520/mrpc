cmake_minimum_required(VERSION 2.8)
project(mrpc)
set(CXX_STANDARD 11)

#添加头文件连接路径
include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/example)

#添加动态库连接路径
link_directories(${PROJECT_SOURCE_DIR}/lib)

#设置动态库输出路径
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#设置源程序输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

#添加子目录
add_subdirectory(${PROJECT_SOURCE_DIR}/src)
add_subdirectory(${PROJECT_SOURCE_DIR}/example)
add_subdirectory(${PROJECT_SOURCE_DIR}/test)
