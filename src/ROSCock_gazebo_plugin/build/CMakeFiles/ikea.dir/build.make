# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/admin/ROSCock/src/ROSCock_gazebo_plugin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/admin/ROSCock/src/ROSCock_gazebo_plugin/build

# Include any dependencies generated for this target.
include CMakeFiles/ikea.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ikea.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ikea.dir/flags.make

CMakeFiles/ikea.dir/ikea.cpp.o: CMakeFiles/ikea.dir/flags.make
CMakeFiles/ikea.dir/ikea.cpp.o: ../ikea.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/admin/ROSCock/src/ROSCock_gazebo_plugin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ikea.dir/ikea.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ikea.dir/ikea.cpp.o -c /home/admin/ROSCock/src/ROSCock_gazebo_plugin/ikea.cpp

CMakeFiles/ikea.dir/ikea.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ikea.dir/ikea.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/admin/ROSCock/src/ROSCock_gazebo_plugin/ikea.cpp > CMakeFiles/ikea.dir/ikea.cpp.i

CMakeFiles/ikea.dir/ikea.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ikea.dir/ikea.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/admin/ROSCock/src/ROSCock_gazebo_plugin/ikea.cpp -o CMakeFiles/ikea.dir/ikea.cpp.s

CMakeFiles/ikea.dir/ikea.cpp.o.requires:

.PHONY : CMakeFiles/ikea.dir/ikea.cpp.o.requires

CMakeFiles/ikea.dir/ikea.cpp.o.provides: CMakeFiles/ikea.dir/ikea.cpp.o.requires
	$(MAKE) -f CMakeFiles/ikea.dir/build.make CMakeFiles/ikea.dir/ikea.cpp.o.provides.build
.PHONY : CMakeFiles/ikea.dir/ikea.cpp.o.provides

CMakeFiles/ikea.dir/ikea.cpp.o.provides.build: CMakeFiles/ikea.dir/ikea.cpp.o


# Object files for target ikea
ikea_OBJECTS = \
"CMakeFiles/ikea.dir/ikea.cpp.o"

# External object files for target ikea
ikea_EXTERNAL_OBJECTS =

ikea: CMakeFiles/ikea.dir/ikea.cpp.o
ikea: CMakeFiles/ikea.dir/build.make
ikea: /opt/ros/jade/lib/libroscpp.so
ikea: /usr/lib64/libpthread.so
ikea: /usr/lib64/libboost_signals.so
ikea: /usr/lib64/libboost_filesystem.so
ikea: /opt/ros/jade/lib/librosconsole.so
ikea: /opt/ros/jade/lib/librosconsole_log4cxx.so
ikea: /opt/ros/jade/lib/librosconsole_backend_interface.so
ikea: /usr/lib64/liblog4cxx.so
ikea: /usr/lib64/libboost_regex.so
ikea: /opt/ros/jade/lib/libroscpp_serialization.so
ikea: /opt/ros/jade/lib/librostime.so
ikea: /opt/ros/jade/lib/libxmlrpcpp.so
ikea: /opt/ros/jade/lib/libcpp_common.so
ikea: /usr/lib64/libboost_system.so
ikea: /usr/lib64/libboost_thread.so
ikea: /usr/lib64/libboost_chrono.so
ikea: /usr/lib64/libboost_date_time.so
ikea: /usr/lib64/libboost_atomic.so
ikea: /usr/lib64/libconsole_bridge.so
ikea: CMakeFiles/ikea.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/admin/ROSCock/src/ROSCock_gazebo_plugin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ikea"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ikea.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ikea.dir/build: ikea

.PHONY : CMakeFiles/ikea.dir/build

CMakeFiles/ikea.dir/requires: CMakeFiles/ikea.dir/ikea.cpp.o.requires

.PHONY : CMakeFiles/ikea.dir/requires

CMakeFiles/ikea.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ikea.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ikea.dir/clean

CMakeFiles/ikea.dir/depend:
	cd /home/admin/ROSCock/src/ROSCock_gazebo_plugin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/admin/ROSCock/src/ROSCock_gazebo_plugin /home/admin/ROSCock/src/ROSCock_gazebo_plugin /home/admin/ROSCock/src/ROSCock_gazebo_plugin/build /home/admin/ROSCock/src/ROSCock_gazebo_plugin/build /home/admin/ROSCock/src/ROSCock_gazebo_plugin/build/CMakeFiles/ikea.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ikea.dir/depend

