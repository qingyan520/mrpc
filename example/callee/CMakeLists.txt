set(SRC_LIST UserService.cc ../user.pb.cc)
add_executable(provider ${SRC_LIST})
set(COMPILE_FLAGS -g)
target_link_libraries(provider mrpc protobuf)