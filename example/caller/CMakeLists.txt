set(SRC_LIST UserCaller.cc ../user.pb.cc)
add_executable(caller ${SRC_LIST})
target_link_libraries(caller mrpc protobuf)