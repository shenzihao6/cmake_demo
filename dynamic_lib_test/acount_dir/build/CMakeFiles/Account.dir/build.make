# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shenzihao6/code/dynamic_lib_test/acount_dir

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shenzihao6/code/dynamic_lib_test/acount_dir/build

# Include any dependencies generated for this target.
include CMakeFiles/Account.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Account.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Account.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Account.dir/flags.make

CMakeFiles/Account.dir/Account.cpp.o: CMakeFiles/Account.dir/flags.make
CMakeFiles/Account.dir/Account.cpp.o: /home/shenzihao6/code/dynamic_lib_test/acount_dir/Account.cpp
CMakeFiles/Account.dir/Account.cpp.o: CMakeFiles/Account.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shenzihao6/code/dynamic_lib_test/acount_dir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Account.dir/Account.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Account.dir/Account.cpp.o -MF CMakeFiles/Account.dir/Account.cpp.o.d -o CMakeFiles/Account.dir/Account.cpp.o -c /home/shenzihao6/code/dynamic_lib_test/acount_dir/Account.cpp

CMakeFiles/Account.dir/Account.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Account.dir/Account.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shenzihao6/code/dynamic_lib_test/acount_dir/Account.cpp > CMakeFiles/Account.dir/Account.cpp.i

CMakeFiles/Account.dir/Account.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Account.dir/Account.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shenzihao6/code/dynamic_lib_test/acount_dir/Account.cpp -o CMakeFiles/Account.dir/Account.cpp.s

# Object files for target Account
Account_OBJECTS = \
"CMakeFiles/Account.dir/Account.cpp.o"

# External object files for target Account
Account_EXTERNAL_OBJECTS =

libAccount.so: CMakeFiles/Account.dir/Account.cpp.o
libAccount.so: CMakeFiles/Account.dir/build.make
libAccount.so: CMakeFiles/Account.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shenzihao6/code/dynamic_lib_test/acount_dir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libAccount.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Account.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Account.dir/build: libAccount.so
.PHONY : CMakeFiles/Account.dir/build

CMakeFiles/Account.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Account.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Account.dir/clean

CMakeFiles/Account.dir/depend:
	cd /home/shenzihao6/code/dynamic_lib_test/acount_dir/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shenzihao6/code/dynamic_lib_test/acount_dir /home/shenzihao6/code/dynamic_lib_test/acount_dir /home/shenzihao6/code/dynamic_lib_test/acount_dir/build /home/shenzihao6/code/dynamic_lib_test/acount_dir/build /home/shenzihao6/code/dynamic_lib_test/acount_dir/build/CMakeFiles/Account.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Account.dir/depend

