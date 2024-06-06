cmake_minimum_required(VERSION 3.19)

project(generate_expression)

#file(GENERATE OUTPUT "./generator_test.txt" CONTENT "$<$<BOOL:false>:TEST NEW>")


add_executable(generate_expression main.cpp)

#file(GENERATE OUTPUT "./generator_test.txt"  CONTENT "$<$<TARGET_EXISTS:generate_expression>:目标已存在>")

set(CMAKE_BUILD_TYPE "Debug")
#file(GENERATE OUTPUT "./generator_test.txt" CONTENT "$<$<CONFIG:DEBUG>: --coverage>")
#file(GENERATE OUTPUT "./generator_test.txt" CONTENT "$<TARGET_FILE:generate_expression>")
file(GENERATE OUTPUT "./generator_test.txt" CONTENT "$<TARGET_FILE_NAME:generate_expression>")

