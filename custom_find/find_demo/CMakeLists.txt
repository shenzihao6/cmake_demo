cmake_minimum_required(VERSION 3.10)

project(find_demo)


#设置CMAKE_MODULE_PATH变量,以便find_package查找，cmake下需要有的Finddlib.cmake文件
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")

# 设置一个缓存变量，用于在命令行设置dlib的安装路径，给Finddlib.cmake使用
set(DLIB_INSTALL_PATH "/" CACHE PATH "dlib的安装路径")
find_package(dlib REQUIRED)

if(dlib_FOUND)
    message(STATUS "dlib found")
    message(STATUS "dlib include dir: ${dlib_INCLUDE_DIR}")
    message(STATUS "dlib library dir: ${dlib_LIBRARY}")
    message(STATUS "dlib version: ${dlib_VERSION}")
    message(STATUS "dlib author: ${dlib_AUTHOR}")
    message(STATUS "dlib lib dir: ${dlib_LIBRARY_DIR}")
else()
    message(FATAL_ERROR "dlib not found")
endif()

set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH ${dlib_LIBRARY_DIR}) #这里不用再加一个lib目录了吗

add_executable(main main.cpp)

target_include_directories(main PRIVATE ${dlib_INCLUDE_DIR})
target_link_libraries(main PRIVATE ${dlib_LIBRARY})

#设置安装
install(TARGETS main
        RUNTIME DESTINATION bin)

#[[
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=./installed -DDLIB_INSTALL_PATH=/home/shenzihao6/Documents/installed
cmake --build build
cmake --install build
]]