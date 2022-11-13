aux_source_directory(. SRC_LIST)
add_executable(test_conf ${SRC_LIST})
target_link_libraries(test_conf mrpc)