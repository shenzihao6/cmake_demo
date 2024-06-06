# 最低版本要求
cmake_minimum_required(VERSION 3.0)
# 项目名称
project(Account)

add_library(${PROJECT_NAME} STATIC Account.cpp)

#account_dir/cmakelist.include(TestCXXAcceptsFlag)
