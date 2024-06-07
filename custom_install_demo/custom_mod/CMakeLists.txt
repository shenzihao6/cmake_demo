cmake_minimum_required(VERSION 3.10)
project(custom_mod)

add_library(dlib SHARED src/dlib.cpp)

# 路径被两次引用，1、编译dlib；2、install export写入config时，所以会报错
# 添加头文件目录
#target_include_directories(dlib PUBLIC include) 

# # 使用生成器表达式，解决路径被两次引用的问题
target_include_directories(dlib PUBLIC $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include> #生成时的头文件目录
                                       $<INSTALL_INTERFACE:include>)                   #安装时的头文件目录

#target_include_directories(dlib PUBLIC include)

set_target_properties(dlib PROPERTIES PUBLIC_HEADER include/dlib.h)

install(TARGETS dlib
        EXPORT dlib #导出dlib目标
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        PUBLIC_HEADER DESTINATION include)



#通过模版生成 <Package>Config.cmake, 用于 find_package() 寻找包，可以包装一些信息，比如版本号等
set(TARGET_NAME dlib)

install(EXPORT dlib #因为指明了dlib的关系吗
        FILE ${TARGET_NAME}Target.cmake
        DESTINATION config)

include(CMakePackageConfigHelpers)
# configure_package_config_file 参数：模板文件，生成文件，安装路径
configure_package_config_file(
        ${CMAKE_SOURCE_DIR}/cmake/${TARGET_NAME}Config.cmake.in
        ${TARGET_NAME}Config.cmake
        INSTALL_DESTINATION config
)

#将生成的 <Package>Config.cmake 安装到 ${CMAKE_INSTALL_PREFIX}/config 目录下
install(
    FILES ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_NAME}Config.cmake DESTINATION config
)

#[[
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=./installed -DDLIB_INSTALL_PATH=/home/shenzihao6/Documents/installed
cmake --build build
cmake --install build
]]