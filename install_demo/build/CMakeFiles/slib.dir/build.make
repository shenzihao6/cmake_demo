# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shenzihao6/code/install_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shenzihao6/code/install_demo/build

# Include any dependencies generated for this target.
include CMakeFiles/slib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/slib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/slib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/slib.dir/flags.make

CMakeFiles/slib.dir/src/slib.cpp.o: CMakeFiles/slib.dir/flags.make
CMakeFiles/slib.dir/src/slib.cpp.o: ../src/slib.cpp
CMakeFiles/slib.dir/src/slib.cpp.o: CMakeFiles/slib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shenzihao6/code/install_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/slib.dir/src/slib.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/slib.dir/src/slib.cpp.o -MF CMakeFiles/slib.dir/src/slib.cpp.o.d -o CMakeFiles/slib.dir/src/slib.cpp.o -c /home/shenzihao6/code/install_demo/src/slib.cpp

CMakeFiles/slib.dir/src/slib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slib.dir/src/slib.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shenzihao6/code/install_demo/src/slib.cpp > CMakeFiles/slib.dir/src/slib.cpp.i

CMakeFiles/slib.dir/src/slib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slib.dir/src/slib.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shenzihao6/code/install_demo/src/slib.cpp -o CMakeFiles/slib.dir/src/slib.cpp.s

# Object files for target slib
slib_OBJECTS = \
"CMakeFiles/slib.dir/src/slib.cpp.o"

# External object files for target slib
slib_EXTERNAL_OBJECTS =

libslib.a: CMakeFiles/slib.dir/src/slib.cpp.o
libslib.a: CMakeFiles/slib.dir/build.make
libslib.a: CMakeFiles/slib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shenzihao6/code/install_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libslib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/slib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/slib.dir/build: libslib.a
.PHONY : CMakeFiles/slib.dir/build

CMakeFiles/slib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/slib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/slib.dir/clean

CMakeFiles/slib.dir/depend:
	cd /home/shenzihao6/code/install_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shenzihao6/code/install_demo /home/shenzihao6/code/install_demo /home/shenzihao6/code/install_demo/build /home/shenzihao6/code/install_demo/build /home/shenzihao6/code/install_demo/build/CMakeFiles/slib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/slib.dir/depend

