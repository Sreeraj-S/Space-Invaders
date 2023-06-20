# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/viki/Space-Invaders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viki/Space-Invaders

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/viki/Space-Invaders/CMakeFiles /home/viki/Space-Invaders//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/viki/Space-Invaders/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named invaders

# Build rule for target.
invaders: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 invaders
.PHONY : invaders

# fast build rule for target.
invaders/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/build
.PHONY : invaders/fast

Source/Animation.o: Source/Animation.cpp.o
.PHONY : Source/Animation.o

# target to build an object file
Source/Animation.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Animation.cpp.o
.PHONY : Source/Animation.cpp.o

Source/Animation.i: Source/Animation.cpp.i
.PHONY : Source/Animation.i

# target to preprocess a source file
Source/Animation.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Animation.cpp.i
.PHONY : Source/Animation.cpp.i

Source/Animation.s: Source/Animation.cpp.s
.PHONY : Source/Animation.s

# target to generate assembly for a file
Source/Animation.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Animation.cpp.s
.PHONY : Source/Animation.cpp.s

Source/CheckName.o: Source/CheckName.cpp.o
.PHONY : Source/CheckName.o

# target to build an object file
Source/CheckName.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/CheckName.cpp.o
.PHONY : Source/CheckName.cpp.o

Source/CheckName.i: Source/CheckName.cpp.i
.PHONY : Source/CheckName.i

# target to preprocess a source file
Source/CheckName.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/CheckName.cpp.i
.PHONY : Source/CheckName.cpp.i

Source/CheckName.s: Source/CheckName.cpp.s
.PHONY : Source/CheckName.s

# target to generate assembly for a file
Source/CheckName.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/CheckName.cpp.s
.PHONY : Source/CheckName.cpp.s

Source/DrawText.o: Source/DrawText.cpp.o
.PHONY : Source/DrawText.o

# target to build an object file
Source/DrawText.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/DrawText.cpp.o
.PHONY : Source/DrawText.cpp.o

Source/DrawText.i: Source/DrawText.cpp.i
.PHONY : Source/DrawText.i

# target to preprocess a source file
Source/DrawText.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/DrawText.cpp.i
.PHONY : Source/DrawText.cpp.i

Source/DrawText.s: Source/DrawText.cpp.s
.PHONY : Source/DrawText.s

# target to generate assembly for a file
Source/DrawText.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/DrawText.cpp.s
.PHONY : Source/DrawText.cpp.s

Source/Enemy.o: Source/Enemy.cpp.o
.PHONY : Source/Enemy.o

# target to build an object file
Source/Enemy.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Enemy.cpp.o
.PHONY : Source/Enemy.cpp.o

Source/Enemy.i: Source/Enemy.cpp.i
.PHONY : Source/Enemy.i

# target to preprocess a source file
Source/Enemy.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Enemy.cpp.i
.PHONY : Source/Enemy.cpp.i

Source/Enemy.s: Source/Enemy.cpp.s
.PHONY : Source/Enemy.s

# target to generate assembly for a file
Source/Enemy.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Enemy.cpp.s
.PHONY : Source/Enemy.cpp.s

Source/EnemyManager.o: Source/EnemyManager.cpp.o
.PHONY : Source/EnemyManager.o

# target to build an object file
Source/EnemyManager.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/EnemyManager.cpp.o
.PHONY : Source/EnemyManager.cpp.o

Source/EnemyManager.i: Source/EnemyManager.cpp.i
.PHONY : Source/EnemyManager.i

# target to preprocess a source file
Source/EnemyManager.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/EnemyManager.cpp.i
.PHONY : Source/EnemyManager.cpp.i

Source/EnemyManager.s: Source/EnemyManager.cpp.s
.PHONY : Source/EnemyManager.s

# target to generate assembly for a file
Source/EnemyManager.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/EnemyManager.cpp.s
.PHONY : Source/EnemyManager.cpp.s

Source/FileAccess.o: Source/FileAccess.cpp.o
.PHONY : Source/FileAccess.o

# target to build an object file
Source/FileAccess.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/FileAccess.cpp.o
.PHONY : Source/FileAccess.cpp.o

Source/FileAccess.i: Source/FileAccess.cpp.i
.PHONY : Source/FileAccess.i

# target to preprocess a source file
Source/FileAccess.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/FileAccess.cpp.i
.PHONY : Source/FileAccess.cpp.i

Source/FileAccess.s: Source/FileAccess.cpp.s
.PHONY : Source/FileAccess.s

# target to generate assembly for a file
Source/FileAccess.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/FileAccess.cpp.s
.PHONY : Source/FileAccess.cpp.s

Source/Main.o: Source/Main.cpp.o
.PHONY : Source/Main.o

# target to build an object file
Source/Main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Main.cpp.o
.PHONY : Source/Main.cpp.o

Source/Main.i: Source/Main.cpp.i
.PHONY : Source/Main.i

# target to preprocess a source file
Source/Main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Main.cpp.i
.PHONY : Source/Main.cpp.i

Source/Main.s: Source/Main.cpp.s
.PHONY : Source/Main.s

# target to generate assembly for a file
Source/Main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Main.cpp.s
.PHONY : Source/Main.cpp.s

Source/MainMenu.o: Source/MainMenu.cpp.o
.PHONY : Source/MainMenu.o

# target to build an object file
Source/MainMenu.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/MainMenu.cpp.o
.PHONY : Source/MainMenu.cpp.o

Source/MainMenu.i: Source/MainMenu.cpp.i
.PHONY : Source/MainMenu.i

# target to preprocess a source file
Source/MainMenu.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/MainMenu.cpp.i
.PHONY : Source/MainMenu.cpp.i

Source/MainMenu.s: Source/MainMenu.cpp.s
.PHONY : Source/MainMenu.s

# target to generate assembly for a file
Source/MainMenu.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/MainMenu.cpp.s
.PHONY : Source/MainMenu.cpp.s

Source/Player.o: Source/Player.cpp.o
.PHONY : Source/Player.o

# target to build an object file
Source/Player.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Player.cpp.o
.PHONY : Source/Player.cpp.o

Source/Player.i: Source/Player.cpp.i
.PHONY : Source/Player.i

# target to preprocess a source file
Source/Player.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Player.cpp.i
.PHONY : Source/Player.cpp.i

Source/Player.s: Source/Player.cpp.s
.PHONY : Source/Player.s

# target to generate assembly for a file
Source/Player.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Player.cpp.s
.PHONY : Source/Player.cpp.s

Source/Ufo.o: Source/Ufo.cpp.o
.PHONY : Source/Ufo.o

# target to build an object file
Source/Ufo.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Ufo.cpp.o
.PHONY : Source/Ufo.cpp.o

Source/Ufo.i: Source/Ufo.cpp.i
.PHONY : Source/Ufo.i

# target to preprocess a source file
Source/Ufo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Ufo.cpp.i
.PHONY : Source/Ufo.cpp.i

Source/Ufo.s: Source/Ufo.cpp.s
.PHONY : Source/Ufo.s

# target to generate assembly for a file
Source/Ufo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/invaders.dir/build.make CMakeFiles/invaders.dir/Source/Ufo.cpp.s
.PHONY : Source/Ufo.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... invaders"
	@echo "... Source/Animation.o"
	@echo "... Source/Animation.i"
	@echo "... Source/Animation.s"
	@echo "... Source/CheckName.o"
	@echo "... Source/CheckName.i"
	@echo "... Source/CheckName.s"
	@echo "... Source/DrawText.o"
	@echo "... Source/DrawText.i"
	@echo "... Source/DrawText.s"
	@echo "... Source/Enemy.o"
	@echo "... Source/Enemy.i"
	@echo "... Source/Enemy.s"
	@echo "... Source/EnemyManager.o"
	@echo "... Source/EnemyManager.i"
	@echo "... Source/EnemyManager.s"
	@echo "... Source/FileAccess.o"
	@echo "... Source/FileAccess.i"
	@echo "... Source/FileAccess.s"
	@echo "... Source/Main.o"
	@echo "... Source/Main.i"
	@echo "... Source/Main.s"
	@echo "... Source/MainMenu.o"
	@echo "... Source/MainMenu.i"
	@echo "... Source/MainMenu.s"
	@echo "... Source/Player.o"
	@echo "... Source/Player.i"
	@echo "... Source/Player.s"
	@echo "... Source/Ufo.o"
	@echo "... Source/Ufo.i"
	@echo "... Source/Ufo.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

