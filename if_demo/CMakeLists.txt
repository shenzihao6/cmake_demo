cmake_minimum_required(VERSION 3.10)

project(if_demo)

message("====== if =====")

if(1)
    message("1是真")
else()
    message("0是真")
endif()


if(UNDEFINED)
    message("UNDEFINED 是 true")
else()
    message("UNDEFINED 是 false")
endif()

set(DEFINED "NO")
if(DEFINED)
    message("DEFINED 是 true")
else()
    message("DEFINED 是 false")
endif()


if(1 AND yes)
    message("1 AND yes 是 true")
else()
    message("1 AND yes 是 false")
endif()

if(1 OR no)
    message("1 OR yes 是 true")
else()
    message("1 OR yes 是 false")
endif()

if(NOT 0)
    message("NoT 0 是 true")
else()
    message("NoT 0 是 false")
endif()

if(1 AND (0 OR 1))
    message("1 AND (0 OR 1) 是 true")
else()
    message("1 AND (0 OR 1) 是 false")
endif()