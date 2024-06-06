cmake_minimum_required(VERSION 3.0)

# 项目名称
project(test_account)

# 添加可执行文件
add_executable(test_account main.cpp)

# 为目标添加头文件路径
target_include_directories(test_account PUBLIC ../acount_dir)

target_link_directories(test_account PUBLIC ../acount_dir/build)

# 为目标添加库
target_link_libraries(test_account Account)