
cmake_minimum_required(VERSION 3.10)

project(install_demo)

include_directories(include)

#设置RPATH解决install后找不到动态库问题
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib)

#添加静态库
add_library(slib STATIC src/slib.cpp)
add_library(dlib SHARED src/dlib.cpp)

add_executable(install_demo main.cpp)

target_link_libraries(install_demo PUBLIC slib dlib)

#安装头文件目录
#方法一: 使用install将文件夹安装到指定目录
# include有前缀: CMAKE_INSTALL_PREFIX,默认是/usr/local, bin的完整路径为/usr/local/include
install(DIRECTORY include/ DESTINATION include)
#方法二: 使用设置公共头文件: PUBLIC HEADER_DIR
#set_target_properties(slib PROPERTIES PUBLIC_HEADER include/slib.h)
#set_target_properties(dlib PROPERTIES PUBLIC_HEADER include/dlib.h)
#安装
# bin/lib有前缀: CMAKE_INSTALL_PREFIX,默认是/usr/local, bin的完整路径为/usr/local/bin
message(STATUS "CMAKE_INSTALL_PREFIX: ${CMAKE_INSTALL_PREFIX}")
install(
    TARGETS ${PROJECT_NAME} slib dlib
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    #PUBLIC_HEADER DESTINATION include #公共头文件
)

#[[
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/home/shenzihao6/code/installed 如果要改是在这里修改CMKA_INSTALL_PREFIX的值而不是cmake --install build后面添加
cmake --build build
cmake --install build
]]
