cmake_minimum_required(VERSION 3.10)

project(custom_mod)

add_library(dlib SHARED src/dlib.cpp) #工程名可以和最终的lib名称不一样

target_include_directories(dlib PUBLIC include)#因为需要去include下dlib.h的头文件

set_target_properties(dlib PROPERTIES PUBLIC_HEADER include/dlib.h)

#添加安装

install(TARGETS dlib
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        PUBLIC_HEADER DESTINATION include
        )
#[[
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=~/Documents/installed
cmake --build build
cmake --install build
]]