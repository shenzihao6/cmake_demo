cmake_minimum_required(VERSION 3.10)
project(find_demo)

add_executable(${PROJECT_NAME} main.cpp)

find_package(gflags REQUIRED)

target_include_directories(${PROJECT_NAME} PRIVATE ${gflags_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} ${gflags_LIBRARIES})
if(gflags_FOUND)
    message(STATUS "gflags found")
    message(STATUS "gflags include dir: ${gflags_INCLUDE_DIR}")
    message(STATUS "gflags library: ${gflags_LIBRARIES}")
else()
    message(FATAL_ERROR "gflags not found")
endif()    
