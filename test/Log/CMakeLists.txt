aux_source_directory(. SRC_LIST)
add_executable(test_Log ${SRC_LIST})
target_link_libraries(test_Log pthread mrpc)
