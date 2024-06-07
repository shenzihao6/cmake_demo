#寻找dlib.h，即寻找 ${DLIB_INSTALL_PATH}/include下是否有dlib.h文件，如果有则返回该文件的路径给dlib_INCLUDE_DIR
find_path(dlib_INCLUDE_DIR dlib.h PATHS ${DLIB_INSTALL_PATH}/include)
#寻找dlib库，即寻找 ${DLIB_INSTALL_PATH}/lib下是否有libdlib.so文件，如果有则返回该文件的路径给dlib_LIBRARY.这里搜索dlib合理吗？？？？
find_library(dlib_LIBRARY dlib PATHS ${DLIB_INSTALL_PATH}/lib)

# 如果dlib_INCLUDE_DIR和dlib_LIBRARY都找到了，那么就说明dlib库找到了.那么久设置dlib_FOUND为true
if(dlib_INCLUDE_DIR AND dlib_LIBRARY)
    set(dlib_FOUND TRUE)
    set(dlib_VERSION "1.0.0") #dlib的版本
    set(dlib_AUTHOR "prideshen") #dlib的作者
    # lib文件所在的目录
    get_filename_component(dlib_LIBRARY_DIR ${dlib_LIBRARY} DIRECTORY)
endif()