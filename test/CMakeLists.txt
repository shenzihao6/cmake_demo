cmake_minimum_required(VERSION 3.12)
# 项目名称，版本，描述，支持的语言
project(HelloWorld VERSION 1.0 
                   DESCRIPTION "项目描述" 
                   LANGUAGES CXX)

#设置c++标准
set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJECT_NAME} src/sss.cpp)
add_library()
#target_link_libraries()