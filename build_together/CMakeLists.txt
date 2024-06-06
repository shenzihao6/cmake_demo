cmake_minimum_required(VERSION 3.10)

project(test_account)

# 添加动态库
add_library(account SHARED acount_dir/Account.cpp)

add_executable(test_account test_account/main.cpp)

target_include_directories(test_account PUBLIC acount_dir)

target_link_directories(test_account PUBLIC acount_dir/build)
target_link_libraries(test_account account)

