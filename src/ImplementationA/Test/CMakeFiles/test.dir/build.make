# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.2.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.2.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA

# Include any dependencies generated for this target.
include Test/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include Test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include Test/CMakeFiles/test.dir/flags.make

Test/CMakeFiles/test.dir/main.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/main.o: Test/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Test/CMakeFiles/test.dir/main.o"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/main.o -c /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test/main.cpp

Test/CMakeFiles/test.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/main.i"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test/main.cpp > CMakeFiles/test.dir/main.i

Test/CMakeFiles/test.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/main.s"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test/main.cpp -o CMakeFiles/test.dir/main.s

Test/CMakeFiles/test.dir/main.o.requires:
.PHONY : Test/CMakeFiles/test.dir/main.o.requires

Test/CMakeFiles/test.dir/main.o.provides: Test/CMakeFiles/test.dir/main.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/main.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/main.o.provides

Test/CMakeFiles/test.dir/main.o.provides.build: Test/CMakeFiles/test.dir/main.o

Test/CMakeFiles/test.dir/__/SMST/SMST.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/__/SMST/SMST.o: SMST/SMST.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Test/CMakeFiles/test.dir/__/SMST/SMST.o"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/__/SMST/SMST.o -c /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/SMST.cpp

Test/CMakeFiles/test.dir/__/SMST/SMST.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/__/SMST/SMST.i"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/SMST.cpp > CMakeFiles/test.dir/__/SMST/SMST.i

Test/CMakeFiles/test.dir/__/SMST/SMST.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/__/SMST/SMST.s"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/SMST.cpp -o CMakeFiles/test.dir/__/SMST/SMST.s

Test/CMakeFiles/test.dir/__/SMST/SMST.o.requires:
.PHONY : Test/CMakeFiles/test.dir/__/SMST/SMST.o.requires

Test/CMakeFiles/test.dir/__/SMST/SMST.o.provides: Test/CMakeFiles/test.dir/__/SMST/SMST.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/__/SMST/SMST.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/__/SMST/SMST.o.provides

Test/CMakeFiles/test.dir/__/SMST/SMST.o.provides.build: Test/CMakeFiles/test.dir/__/SMST/SMST.o

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o: SMST/PointsGenerator.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/__/SMST/PointsGenerator.o -c /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/PointsGenerator.cpp

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/__/SMST/PointsGenerator.i"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/PointsGenerator.cpp > CMakeFiles/test.dir/__/SMST/PointsGenerator.i

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/__/SMST/PointsGenerator.s"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/SMST/PointsGenerator.cpp -o CMakeFiles/test.dir/__/SMST/PointsGenerator.s

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.requires:
.PHONY : Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.requires

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.provides: Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.provides

Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.provides.build: Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o

Test/CMakeFiles/test.dir/__/LMST/LMST.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/__/LMST/LMST.o: LMST/LMST.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Test/CMakeFiles/test.dir/__/LMST/LMST.o"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/__/LMST/LMST.o -c /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/LMST/LMST.cpp

Test/CMakeFiles/test.dir/__/LMST/LMST.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/__/LMST/LMST.i"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/LMST/LMST.cpp > CMakeFiles/test.dir/__/LMST/LMST.i

Test/CMakeFiles/test.dir/__/LMST/LMST.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/__/LMST/LMST.s"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/LMST/LMST.cpp -o CMakeFiles/test.dir/__/LMST/LMST.s

Test/CMakeFiles/test.dir/__/LMST/LMST.o.requires:
.PHONY : Test/CMakeFiles/test.dir/__/LMST/LMST.o.requires

Test/CMakeFiles/test.dir/__/LMST/LMST.o.provides: Test/CMakeFiles/test.dir/__/LMST/LMST.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/__/LMST/LMST.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/__/LMST/LMST.o.provides

Test/CMakeFiles/test.dir/__/LMST/LMST.o.provides.build: Test/CMakeFiles/test.dir/__/LMST/LMST.o

Test/CMakeFiles/test.dir/__/ZMST/ZMST.o: Test/CMakeFiles/test.dir/flags.make
Test/CMakeFiles/test.dir/__/ZMST/ZMST.o: ZMST/ZMST.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Test/CMakeFiles/test.dir/__/ZMST/ZMST.o"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/__/ZMST/ZMST.o -c /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/ZMST/ZMST.cpp

Test/CMakeFiles/test.dir/__/ZMST/ZMST.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/__/ZMST/ZMST.i"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/ZMST/ZMST.cpp > CMakeFiles/test.dir/__/ZMST/ZMST.i

Test/CMakeFiles/test.dir/__/ZMST/ZMST.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/__/ZMST/ZMST.s"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/ZMST/ZMST.cpp -o CMakeFiles/test.dir/__/ZMST/ZMST.s

Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.requires:
.PHONY : Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.requires

Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.provides: Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.requires
	$(MAKE) -f Test/CMakeFiles/test.dir/build.make Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.provides.build
.PHONY : Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.provides

Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.provides.build: Test/CMakeFiles/test.dir/__/ZMST/ZMST.o

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/main.o" \
"CMakeFiles/test.dir/__/SMST/SMST.o" \
"CMakeFiles/test.dir/__/SMST/PointsGenerator.o" \
"CMakeFiles/test.dir/__/LMST/LMST.o" \
"CMakeFiles/test.dir/__/ZMST/ZMST.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

bin/test: Test/CMakeFiles/test.dir/main.o
bin/test: Test/CMakeFiles/test.dir/__/SMST/SMST.o
bin/test: Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o
bin/test: Test/CMakeFiles/test.dir/__/LMST/LMST.o
bin/test: Test/CMakeFiles/test.dir/__/ZMST/ZMST.o
bin/test: Test/CMakeFiles/test.dir/build.make
bin/test: Test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/test"
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Test/CMakeFiles/test.dir/build: bin/test
.PHONY : Test/CMakeFiles/test.dir/build

Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/main.o.requires
Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/__/SMST/SMST.o.requires
Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/__/SMST/PointsGenerator.o.requires
Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/__/LMST/LMST.o.requires
Test/CMakeFiles/test.dir/requires: Test/CMakeFiles/test.dir/__/ZMST/ZMST.o.requires
.PHONY : Test/CMakeFiles/test.dir/requires

Test/CMakeFiles/test.dir/clean:
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : Test/CMakeFiles/test.dir/clean

Test/CMakeFiles/test.dir/depend:
	cd /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test /Users/zhuangtianyi/Codes/projects/SolveRST/ImplementationA/Test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Test/CMakeFiles/test.dir/depend

