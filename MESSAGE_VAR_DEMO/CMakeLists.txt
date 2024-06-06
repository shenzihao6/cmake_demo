cmake_minimum_required(VERSION 3.10)

project(message_var_demo)

message("输出消息")
message("输出1" "输出2" 输出3)

#设置变量
set(VAR "变量1")
message("VAR="${VAR})
message("VAR1: ${VAR}")

unset(VAR) #删除变量变为"
message("\${VAR}=${VAR}")

set(CACHE_VAR_TEST "原始值" CACHE STRING "这是一个缓存变量" )
message("变量的缓存值：${CACHE_VAR_TEST}")

# 第一类 提供信息的变量
message("${PROJECT_NAME}")
message("${CMAKE_SOURCE_DIR}")
message("${CMAKE_BINARY_DIR}")
message("${CMAKE_CURRENT_LIST_FILE}")

# 第二类 用于控制CMake运行的变量
set(BUILD_SHARED_LIBS ON) #设置是否构建动态库，默认是OFF,即构建静态库，设置为ON后，构建动态库
# add_library(${PROJECT_NAME} ${SOURCE_FILES}) 

# 第三类 描述系统的变量
message("是否是Windows系统：${WIN32}")
message("是否是Linux系统：${UNIX}")
message("是否是苹果系统：${APPLE}")
message("系统名称：${CMAKE_SYSTEM_NAME}")