# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sjw/mrpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjw/mrpc/build

# Include any dependencies generated for this target.
include test/Log/CMakeFiles/test_Log.dir/depend.make

# Include the progress variables for this target.
include test/Log/CMakeFiles/test_Log.dir/progress.make

# Include the compile flags for this target's objects.
include test/Log/CMakeFiles/test_Log.dir/flags.make

test/Log/CMakeFiles/test_Log.dir/test.cc.o: test/Log/CMakeFiles/test_Log.dir/flags.make
test/Log/CMakeFiles/test_Log.dir/test.cc.o: ../test/Log/test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/Log/CMakeFiles/test_Log.dir/test.cc.o"
	cd /home/sjw/mrpc/build/test/Log && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_Log.dir/test.cc.o -c /home/sjw/mrpc/test/Log/test.cc

test/Log/CMakeFiles/test_Log.dir/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_Log.dir/test.cc.i"
	cd /home/sjw/mrpc/build/test/Log && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/test/Log/test.cc > CMakeFiles/test_Log.dir/test.cc.i

test/Log/CMakeFiles/test_Log.dir/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_Log.dir/test.cc.s"
	cd /home/sjw/mrpc/build/test/Log && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/test/Log/test.cc -o CMakeFiles/test_Log.dir/test.cc.s

test/Log/CMakeFiles/test_Log.dir/test.cc.o.requires:

.PHONY : test/Log/CMakeFiles/test_Log.dir/test.cc.o.requires

test/Log/CMakeFiles/test_Log.dir/test.cc.o.provides: test/Log/CMakeFiles/test_Log.dir/test.cc.o.requires
	$(MAKE) -f test/Log/CMakeFiles/test_Log.dir/build.make test/Log/CMakeFiles/test_Log.dir/test.cc.o.provides.build
.PHONY : test/Log/CMakeFiles/test_Log.dir/test.cc.o.provides

test/Log/CMakeFiles/test_Log.dir/test.cc.o.provides.build: test/Log/CMakeFiles/test_Log.dir/test.cc.o


# Object files for target test_Log
test_Log_OBJECTS = \
"CMakeFiles/test_Log.dir/test.cc.o"

# External object files for target test_Log
test_Log_EXTERNAL_OBJECTS =

../bin/test_Log: test/Log/CMakeFiles/test_Log.dir/test.cc.o
../bin/test_Log: test/Log/CMakeFiles/test_Log.dir/build.make
../bin/test_Log: ../lib/libmrpc.a
../bin/test_Log: test/Log/CMakeFiles/test_Log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/test_Log"
	cd /home/sjw/mrpc/build/test/Log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_Log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/Log/CMakeFiles/test_Log.dir/build: ../bin/test_Log

.PHONY : test/Log/CMakeFiles/test_Log.dir/build

test/Log/CMakeFiles/test_Log.dir/requires: test/Log/CMakeFiles/test_Log.dir/test.cc.o.requires

.PHONY : test/Log/CMakeFiles/test_Log.dir/requires

test/Log/CMakeFiles/test_Log.dir/clean:
	cd /home/sjw/mrpc/build/test/Log && $(CMAKE_COMMAND) -P CMakeFiles/test_Log.dir/cmake_clean.cmake
.PHONY : test/Log/CMakeFiles/test_Log.dir/clean

test/Log/CMakeFiles/test_Log.dir/depend:
	cd /home/sjw/mrpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjw/mrpc /home/sjw/mrpc/test/Log /home/sjw/mrpc/build /home/sjw/mrpc/build/test/Log /home/sjw/mrpc/build/test/Log/CMakeFiles/test_Log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/Log/CMakeFiles/test_Log.dir/depend
