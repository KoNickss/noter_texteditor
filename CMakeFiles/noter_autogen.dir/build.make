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
CMAKE_SOURCE_DIR = /home/konicks/noter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/konicks/noter

# Utility rule file for noter_autogen.

# Include the progress variables for this target.
include CMakeFiles/noter_autogen.dir/progress.make

CMakeFiles/noter_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target noter"
	/usr/bin/cmake -E cmake_autogen /home/konicks/noter/CMakeFiles/noter_autogen.dir/AutogenInfo.json ""

noter_autogen: CMakeFiles/noter_autogen
noter_autogen: CMakeFiles/noter_autogen.dir/build.make

.PHONY : noter_autogen

# Rule to build all files generated by this target.
CMakeFiles/noter_autogen.dir/build: noter_autogen

.PHONY : CMakeFiles/noter_autogen.dir/build

CMakeFiles/noter_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/noter_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/noter_autogen.dir/clean

CMakeFiles/noter_autogen.dir/depend:
	cd /home/konicks/noter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/konicks/noter /home/konicks/noter /home/konicks/noter /home/konicks/noter /home/konicks/noter/CMakeFiles/noter_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/noter_autogen.dir/depend

