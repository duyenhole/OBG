# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/duyenho/workspace/obg_manager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duyenho/workspace/obg_manager/build

# Include any dependencies generated for this target.
include CMakeFiles/obgapp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/obgapp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/obgapp.dir/flags.make

CMakeFiles/obgapp.dir/obgapp.cpp.o: CMakeFiles/obgapp.dir/flags.make
CMakeFiles/obgapp.dir/obgapp.cpp.o: ../obgapp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duyenho/workspace/obg_manager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/obgapp.dir/obgapp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/obgapp.dir/obgapp.cpp.o -c /home/duyenho/workspace/obg_manager/obgapp.cpp

CMakeFiles/obgapp.dir/obgapp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obgapp.dir/obgapp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duyenho/workspace/obg_manager/obgapp.cpp > CMakeFiles/obgapp.dir/obgapp.cpp.i

CMakeFiles/obgapp.dir/obgapp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obgapp.dir/obgapp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duyenho/workspace/obg_manager/obgapp.cpp -o CMakeFiles/obgapp.dir/obgapp.cpp.s

# Object files for target obgapp
obgapp_OBJECTS = \
"CMakeFiles/obgapp.dir/obgapp.cpp.o"

# External object files for target obgapp
obgapp_EXTERNAL_OBJECTS =

obgapp: CMakeFiles/obgapp.dir/obgapp.cpp.o
obgapp: CMakeFiles/obgapp.dir/build.make
obgapp: /usr/local/lib/libvsomeip3.so.3.3.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_log.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
obgapp: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
obgapp: CMakeFiles/obgapp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duyenho/workspace/obg_manager/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable obgapp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obgapp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/obgapp.dir/build: obgapp

.PHONY : CMakeFiles/obgapp.dir/build

CMakeFiles/obgapp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/obgapp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/obgapp.dir/clean

CMakeFiles/obgapp.dir/depend:
	cd /home/duyenho/workspace/obg_manager/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duyenho/workspace/obg_manager /home/duyenho/workspace/obg_manager /home/duyenho/workspace/obg_manager/build /home/duyenho/workspace/obg_manager/build /home/duyenho/workspace/obg_manager/build/CMakeFiles/obgapp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/obgapp.dir/depend

