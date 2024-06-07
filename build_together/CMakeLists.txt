cmake_minimum_required(VERSION 3.10)

project(test_account)

# 添加动态库
add_library(account SHARED acount_dir/Account.cpp)

add_executable(test_account test_account/main.cpp)

target_include_directories(test_account PUBLIC acount_dir)#这里是相对源文件需要添加的头文件路径

#target_link_directories(test_account PUBLIC acount_dir/build) #因为对于Account是针对cmake的，所以在同一个cmakelists下可以不用target_link_libraries的
target_link_libraries(test_account account)

