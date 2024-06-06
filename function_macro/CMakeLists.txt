cmake_minimum_required(VERSION 3.10)

project(function_macro)

#无参数的宏
macro(my_macro)
    message("宏内部的信息123")
    set(macro_var "宏内部变量5677") 
endmacro(my_macro)

my_macro()
my_macro()

message("macro_var: ${macro_var}")

#有参数的宏
macro(second macro arg1 arg2)
    message("macro: ${macro}")
    message("arg1: ${arg1}")
    message("arg2: ${arg2}")    
endmacro(second)
    
second("macro1" "arg11" "arg21")

function(my_func)
    message("函数内部的信息")
    set(func_var "函数内部变量")
endfunction(my_func)

my_func()
my_func()

message("func_var: ${func_var}")

function(my_func first second)
    message("函数内部的信息")
    set(func_var "函数内部变量")
    message("first: ${first}")
    message("second: ${second}")
endfunction(my_func)

my_func(first, second)
my_func(first, second)

message("func_var: ${func_var}")

