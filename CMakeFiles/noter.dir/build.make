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

# Include any dependencies generated for this target.
include CMakeFiles/noter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/noter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/noter.dir/flags.make

noter_en_001.ts: .
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating noter_en_001.ts"
	/usr/lib/qt5/bin/lupdate @/home/konicks/noter/CMakeFiles/noter_en_001.ts_lst_file -ts /home/konicks/noter/noter_en_001.ts

CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o: CMakeFiles/noter.dir/flags.make
CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o: noter_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o -c /home/konicks/noter/noter_autogen/mocs_compilation.cpp

CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/konicks/noter/noter_autogen/mocs_compilation.cpp > CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.i

CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/konicks/noter/noter_autogen/mocs_compilation.cpp -o CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.s

CMakeFiles/noter.dir/main.cpp.o: CMakeFiles/noter.dir/flags.make
CMakeFiles/noter.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/noter.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/noter.dir/main.cpp.o -c /home/konicks/noter/main.cpp

CMakeFiles/noter.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/noter.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/konicks/noter/main.cpp > CMakeFiles/noter.dir/main.cpp.i

CMakeFiles/noter.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/noter.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/konicks/noter/main.cpp -o CMakeFiles/noter.dir/main.cpp.s

CMakeFiles/noter.dir/noter.cpp.o: CMakeFiles/noter.dir/flags.make
CMakeFiles/noter.dir/noter.cpp.o: noter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/noter.dir/noter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/noter.dir/noter.cpp.o -c /home/konicks/noter/noter.cpp

CMakeFiles/noter.dir/noter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/noter.dir/noter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/konicks/noter/noter.cpp > CMakeFiles/noter.dir/noter.cpp.i

CMakeFiles/noter.dir/noter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/noter.dir/noter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/konicks/noter/noter.cpp -o CMakeFiles/noter.dir/noter.cpp.s

# Object files for target noter
noter_OBJECTS = \
"CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/noter.dir/main.cpp.o" \
"CMakeFiles/noter.dir/noter.cpp.o"

# External object files for target noter
noter_EXTERNAL_OBJECTS =

noter: CMakeFiles/noter.dir/noter_autogen/mocs_compilation.cpp.o
noter: CMakeFiles/noter.dir/main.cpp.o
noter: CMakeFiles/noter.dir/noter.cpp.o
noter: CMakeFiles/noter.dir/build.make
noter: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.1
noter: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.1
noter: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.1
noter: CMakeFiles/noter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/konicks/noter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable noter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/noter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/noter.dir/build: noter

.PHONY : CMakeFiles/noter.dir/build

CMakeFiles/noter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/noter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/noter.dir/clean

CMakeFiles/noter.dir/depend: noter_en_001.ts
	cd /home/konicks/noter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/konicks/noter /home/konicks/noter /home/konicks/noter /home/konicks/noter /home/konicks/noter/CMakeFiles/noter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/noter.dir/depend

