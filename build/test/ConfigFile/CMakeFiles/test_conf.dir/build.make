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
include test/ConfigFile/CMakeFiles/test_conf.dir/depend.make

# Include the progress variables for this target.
include test/ConfigFile/CMakeFiles/test_conf.dir/progress.make

# Include the compile flags for this target's objects.
include test/ConfigFile/CMakeFiles/test_conf.dir/flags.make

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o: test/ConfigFile/CMakeFiles/test_conf.dir/flags.make
test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o: ../test/ConfigFile/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o"
	cd /home/sjw/mrpc/build/test/ConfigFile && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_conf.dir/test.cpp.o -c /home/sjw/mrpc/test/ConfigFile/test.cpp

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_conf.dir/test.cpp.i"
	cd /home/sjw/mrpc/build/test/ConfigFile && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/test/ConfigFile/test.cpp > CMakeFiles/test_conf.dir/test.cpp.i

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_conf.dir/test.cpp.s"
	cd /home/sjw/mrpc/build/test/ConfigFile && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/test/ConfigFile/test.cpp -o CMakeFiles/test_conf.dir/test.cpp.s

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.requires:

.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.requires

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.provides: test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.requires
	$(MAKE) -f test/ConfigFile/CMakeFiles/test_conf.dir/build.make test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.provides.build
.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.provides

test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.provides.build: test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o


# Object files for target test_conf
test_conf_OBJECTS = \
"CMakeFiles/test_conf.dir/test.cpp.o"

# External object files for target test_conf
test_conf_EXTERNAL_OBJECTS =

../bin/test_conf: test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o
../bin/test_conf: test/ConfigFile/CMakeFiles/test_conf.dir/build.make
../bin/test_conf: ../lib/libmrpc.a
../bin/test_conf: test/ConfigFile/CMakeFiles/test_conf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/test_conf"
	cd /home/sjw/mrpc/build/test/ConfigFile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_conf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/ConfigFile/CMakeFiles/test_conf.dir/build: ../bin/test_conf

.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/build

test/ConfigFile/CMakeFiles/test_conf.dir/requires: test/ConfigFile/CMakeFiles/test_conf.dir/test.cpp.o.requires

.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/requires

test/ConfigFile/CMakeFiles/test_conf.dir/clean:
	cd /home/sjw/mrpc/build/test/ConfigFile && $(CMAKE_COMMAND) -P CMakeFiles/test_conf.dir/cmake_clean.cmake
.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/clean

test/ConfigFile/CMakeFiles/test_conf.dir/depend:
	cd /home/sjw/mrpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjw/mrpc /home/sjw/mrpc/test/ConfigFile /home/sjw/mrpc/build /home/sjw/mrpc/build/test/ConfigFile /home/sjw/mrpc/build/test/ConfigFile/CMakeFiles/test_conf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/ConfigFile/CMakeFiles/test_conf.dir/depend

