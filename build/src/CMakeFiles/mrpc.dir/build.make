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
include src/CMakeFiles/mrpc.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mrpc.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mrpc.dir/flags.make

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o: ../src/MessageHeader.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o -c /home/sjw/mrpc/src/MessageHeader.pb.cc

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/MessageHeader.pb.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/MessageHeader.pb.cc > CMakeFiles/mrpc.dir/MessageHeader.pb.cc.i

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/MessageHeader.pb.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/MessageHeader.pb.cc -o CMakeFiles/mrpc.dir/MessageHeader.pb.cc.s

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.requires

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.provides: src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.provides

src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.provides.build: src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o


src/CMakeFiles/mrpc.dir/MrpcController.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/MrpcController.cc.o: ../src/MrpcController.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/mrpc.dir/MrpcController.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/MrpcController.cc.o -c /home/sjw/mrpc/src/MrpcController.cc

src/CMakeFiles/mrpc.dir/MrpcController.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/MrpcController.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/MrpcController.cc > CMakeFiles/mrpc.dir/MrpcController.cc.i

src/CMakeFiles/mrpc.dir/MrpcController.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/MrpcController.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/MrpcController.cc -o CMakeFiles/mrpc.dir/MrpcController.cc.s

src/CMakeFiles/mrpc.dir/MrpcController.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/MrpcController.cc.o.requires

src/CMakeFiles/mrpc.dir/MrpcController.cc.o.provides: src/CMakeFiles/mrpc.dir/MrpcController.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/MrpcController.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/MrpcController.cc.o.provides

src/CMakeFiles/mrpc.dir/MrpcController.cc.o.provides.build: src/CMakeFiles/mrpc.dir/MrpcController.cc.o


src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o: ../src/MrpcProvider.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/MrpcProvider.cc.o -c /home/sjw/mrpc/src/MrpcProvider.cc

src/CMakeFiles/mrpc.dir/MrpcProvider.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/MrpcProvider.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/MrpcProvider.cc > CMakeFiles/mrpc.dir/MrpcProvider.cc.i

src/CMakeFiles/mrpc.dir/MrpcProvider.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/MrpcProvider.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/MrpcProvider.cc -o CMakeFiles/mrpc.dir/MrpcProvider.cc.s

src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.requires

src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.provides: src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.provides

src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.provides.build: src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o


src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o: ../src/MrpcApplication.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/MrpcApplication.cc.o -c /home/sjw/mrpc/src/MrpcApplication.cc

src/CMakeFiles/mrpc.dir/MrpcApplication.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/MrpcApplication.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/MrpcApplication.cc > CMakeFiles/mrpc.dir/MrpcApplication.cc.i

src/CMakeFiles/mrpc.dir/MrpcApplication.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/MrpcApplication.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/MrpcApplication.cc -o CMakeFiles/mrpc.dir/MrpcApplication.cc.s

src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.requires

src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.provides: src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.provides

src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.provides.build: src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o


src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o: ../src/MrpcChannel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/MrpcChannel.cc.o -c /home/sjw/mrpc/src/MrpcChannel.cc

src/CMakeFiles/mrpc.dir/MrpcChannel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/MrpcChannel.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/MrpcChannel.cc > CMakeFiles/mrpc.dir/MrpcChannel.cc.i

src/CMakeFiles/mrpc.dir/MrpcChannel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/MrpcChannel.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/MrpcChannel.cc -o CMakeFiles/mrpc.dir/MrpcChannel.cc.s

src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.requires

src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.provides: src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.provides

src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.provides.build: src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o


src/CMakeFiles/mrpc.dir/Log.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/Log.cc.o: ../src/Log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/mrpc.dir/Log.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/Log.cc.o -c /home/sjw/mrpc/src/Log.cc

src/CMakeFiles/mrpc.dir/Log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/Log.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/Log.cc > CMakeFiles/mrpc.dir/Log.cc.i

src/CMakeFiles/mrpc.dir/Log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/Log.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/Log.cc -o CMakeFiles/mrpc.dir/Log.cc.s

src/CMakeFiles/mrpc.dir/Log.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/Log.cc.o.requires

src/CMakeFiles/mrpc.dir/Log.cc.o.provides: src/CMakeFiles/mrpc.dir/Log.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/Log.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/Log.cc.o.provides

src/CMakeFiles/mrpc.dir/Log.cc.o.provides.build: src/CMakeFiles/mrpc.dir/Log.cc.o


src/CMakeFiles/mrpc.dir/ConfigFile.cc.o: src/CMakeFiles/mrpc.dir/flags.make
src/CMakeFiles/mrpc.dir/ConfigFile.cc.o: ../src/ConfigFile.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/mrpc.dir/ConfigFile.cc.o"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mrpc.dir/ConfigFile.cc.o -c /home/sjw/mrpc/src/ConfigFile.cc

src/CMakeFiles/mrpc.dir/ConfigFile.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mrpc.dir/ConfigFile.cc.i"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjw/mrpc/src/ConfigFile.cc > CMakeFiles/mrpc.dir/ConfigFile.cc.i

src/CMakeFiles/mrpc.dir/ConfigFile.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mrpc.dir/ConfigFile.cc.s"
	cd /home/sjw/mrpc/build/src && /opt/rh/devtoolset-11/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjw/mrpc/src/ConfigFile.cc -o CMakeFiles/mrpc.dir/ConfigFile.cc.s

src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.requires:

.PHONY : src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.requires

src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.provides: src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.requires
	$(MAKE) -f src/CMakeFiles/mrpc.dir/build.make src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.provides.build
.PHONY : src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.provides

src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.provides.build: src/CMakeFiles/mrpc.dir/ConfigFile.cc.o


# Object files for target mrpc
mrpc_OBJECTS = \
"CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o" \
"CMakeFiles/mrpc.dir/MrpcController.cc.o" \
"CMakeFiles/mrpc.dir/MrpcProvider.cc.o" \
"CMakeFiles/mrpc.dir/MrpcApplication.cc.o" \
"CMakeFiles/mrpc.dir/MrpcChannel.cc.o" \
"CMakeFiles/mrpc.dir/Log.cc.o" \
"CMakeFiles/mrpc.dir/ConfigFile.cc.o"

# External object files for target mrpc
mrpc_EXTERNAL_OBJECTS =

../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/MrpcController.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/Log.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/ConfigFile.cc.o
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/build.make
../lib/libmrpc.a: src/CMakeFiles/mrpc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjw/mrpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library ../../lib/libmrpc.a"
	cd /home/sjw/mrpc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mrpc.dir/cmake_clean_target.cmake
	cd /home/sjw/mrpc/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mrpc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mrpc.dir/build: ../lib/libmrpc.a

.PHONY : src/CMakeFiles/mrpc.dir/build

src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/MessageHeader.pb.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/MrpcController.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/MrpcProvider.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/MrpcApplication.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/MrpcChannel.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/Log.cc.o.requires
src/CMakeFiles/mrpc.dir/requires: src/CMakeFiles/mrpc.dir/ConfigFile.cc.o.requires

.PHONY : src/CMakeFiles/mrpc.dir/requires

src/CMakeFiles/mrpc.dir/clean:
	cd /home/sjw/mrpc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mrpc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mrpc.dir/clean

src/CMakeFiles/mrpc.dir/depend:
	cd /home/sjw/mrpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjw/mrpc /home/sjw/mrpc/src /home/sjw/mrpc/build /home/sjw/mrpc/build/src /home/sjw/mrpc/build/src/CMakeFiles/mrpc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mrpc.dir/depend

