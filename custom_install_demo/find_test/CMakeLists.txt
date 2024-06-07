cmake_minimum_required(VERSION 3.10)

project(find_test)

# 首先会再CMAKE_MODULE_PATH中查找Finddlib.cmake文件
# 如果找不到，会再CMAKE_PREFIX_PATH中查找dlibConfig.cmake文件
set(CMAKE_PREFIX_PATH "/home/shenzihao6/code/custom_install_demo/custom_mod/installed/config")

find_package(dlib REQUIRED)

if(dlib_FOUND)
    message(STATUS "dlib found")
    message(STATUS "dlib_INCLUDE_DIR: ${dlib_INCLUDE_DIR}")
    message(STATUS "dlib_LIBRARIES: ${dlib_LIBRARIES}")
    message(STATUS "dlib_AUTHOR: ${dlib_AUTHOR}")

    # 获取${dlib_INCLUDE_DIRS}中的父目录
    get_filename_component(dlib_INCLUDE_DIR_PARENT ${dlib_INCLUDE_DIR} DIRECTORY)
    message(STATUS "dlib_INCLUDE_DIR_PARENT: ${dlib_INCLUDE_DIR_PARENT}")
else()
    message(FATAL_ERROR "dlib not found")
endif()

# 设置RPATH, 否则install后，运行时找不到动态库
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH ${dlib_INCLUDE_DIR_PARENT}/lib) #这里需要加上lib目录？

add_executable(main main.cpp)

target_link_libraries(main ${dlib_LIBRARIES})

#安装
install(TARGETS main 
        RUNTIME DESTINATION bin)

#[[
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=./installed
cmake --build build 
cmake --install build
]]