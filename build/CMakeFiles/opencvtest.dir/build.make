# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Hp\Desktop\Controlonai\Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Hp\Desktop\Controlonai\Project\build

# Include any dependencies generated for this target.
include CMakeFiles/opencvtest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/opencvtest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/opencvtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opencvtest.dir/flags.make

CMakeFiles/opencvtest.dir/src/main.cpp.obj: CMakeFiles/opencvtest.dir/flags.make
CMakeFiles/opencvtest.dir/src/main.cpp.obj: CMakeFiles/opencvtest.dir/includes_CXX.rsp
CMakeFiles/opencvtest.dir/src/main.cpp.obj: C:/Users/Hp/Desktop/Controlonai/Project/src/main.cpp
CMakeFiles/opencvtest.dir/src/main.cpp.obj: CMakeFiles/opencvtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opencvtest.dir/src/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencvtest.dir/src/main.cpp.obj -MF CMakeFiles\opencvtest.dir\src\main.cpp.obj.d -o CMakeFiles\opencvtest.dir\src\main.cpp.obj -c C:\Users\Hp\Desktop\Controlonai\Project\src\main.cpp

CMakeFiles/opencvtest.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencvtest.dir/src/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Hp\Desktop\Controlonai\Project\src\main.cpp > CMakeFiles\opencvtest.dir\src\main.cpp.i

CMakeFiles/opencvtest.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencvtest.dir/src/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Hp\Desktop\Controlonai\Project\src\main.cpp -o CMakeFiles\opencvtest.dir\src\main.cpp.s

CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj: CMakeFiles/opencvtest.dir/flags.make
CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj: CMakeFiles/opencvtest.dir/includes_CXX.rsp
CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj: C:/Users/Hp/Desktop/Controlonai/Project/src/video_capture.cpp
CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj: CMakeFiles/opencvtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj -MF CMakeFiles\opencvtest.dir\src\video_capture.cpp.obj.d -o CMakeFiles\opencvtest.dir\src\video_capture.cpp.obj -c C:\Users\Hp\Desktop\Controlonai\Project\src\video_capture.cpp

CMakeFiles/opencvtest.dir/src/video_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencvtest.dir/src/video_capture.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Hp\Desktop\Controlonai\Project\src\video_capture.cpp > CMakeFiles\opencvtest.dir\src\video_capture.cpp.i

CMakeFiles/opencvtest.dir/src/video_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencvtest.dir/src/video_capture.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Hp\Desktop\Controlonai\Project\src\video_capture.cpp -o CMakeFiles\opencvtest.dir\src\video_capture.cpp.s

CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj: CMakeFiles/opencvtest.dir/flags.make
CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj: CMakeFiles/opencvtest.dir/includes_CXX.rsp
CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj: C:/Users/Hp/Desktop/Controlonai/Project/src/video_streaming.cpp
CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj: CMakeFiles/opencvtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj -MF CMakeFiles\opencvtest.dir\src\video_streaming.cpp.obj.d -o CMakeFiles\opencvtest.dir\src\video_streaming.cpp.obj -c C:\Users\Hp\Desktop\Controlonai\Project\src\video_streaming.cpp

CMakeFiles/opencvtest.dir/src/video_streaming.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencvtest.dir/src/video_streaming.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Hp\Desktop\Controlonai\Project\src\video_streaming.cpp > CMakeFiles\opencvtest.dir\src\video_streaming.cpp.i

CMakeFiles/opencvtest.dir/src/video_streaming.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencvtest.dir/src/video_streaming.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Hp\Desktop\Controlonai\Project\src\video_streaming.cpp -o CMakeFiles\opencvtest.dir\src\video_streaming.cpp.s

CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj: CMakeFiles/opencvtest.dir/flags.make
CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj: CMakeFiles/opencvtest.dir/includes_CXX.rsp
CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj: C:/Users/Hp/Desktop/Controlonai/Project/src/telemetry.cpp
CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj: CMakeFiles/opencvtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj -MF CMakeFiles\opencvtest.dir\src\telemetry.cpp.obj.d -o CMakeFiles\opencvtest.dir\src\telemetry.cpp.obj -c C:\Users\Hp\Desktop\Controlonai\Project\src\telemetry.cpp

CMakeFiles/opencvtest.dir/src/telemetry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencvtest.dir/src/telemetry.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Hp\Desktop\Controlonai\Project\src\telemetry.cpp > CMakeFiles\opencvtest.dir\src\telemetry.cpp.i

CMakeFiles/opencvtest.dir/src/telemetry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencvtest.dir/src/telemetry.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Hp\Desktop\Controlonai\Project\src\telemetry.cpp -o CMakeFiles\opencvtest.dir\src\telemetry.cpp.s

CMakeFiles/opencvtest.dir/src/networking.cpp.obj: CMakeFiles/opencvtest.dir/flags.make
CMakeFiles/opencvtest.dir/src/networking.cpp.obj: CMakeFiles/opencvtest.dir/includes_CXX.rsp
CMakeFiles/opencvtest.dir/src/networking.cpp.obj: C:/Users/Hp/Desktop/Controlonai/Project/src/networking.cpp
CMakeFiles/opencvtest.dir/src/networking.cpp.obj: CMakeFiles/opencvtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/opencvtest.dir/src/networking.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencvtest.dir/src/networking.cpp.obj -MF CMakeFiles\opencvtest.dir\src\networking.cpp.obj.d -o CMakeFiles\opencvtest.dir\src\networking.cpp.obj -c C:\Users\Hp\Desktop\Controlonai\Project\src\networking.cpp

CMakeFiles/opencvtest.dir/src/networking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencvtest.dir/src/networking.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Hp\Desktop\Controlonai\Project\src\networking.cpp > CMakeFiles\opencvtest.dir\src\networking.cpp.i

CMakeFiles/opencvtest.dir/src/networking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencvtest.dir/src/networking.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\I686-W~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Hp\Desktop\Controlonai\Project\src\networking.cpp -o CMakeFiles\opencvtest.dir\src\networking.cpp.s

# Object files for target opencvtest
opencvtest_OBJECTS = \
"CMakeFiles/opencvtest.dir/src/main.cpp.obj" \
"CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj" \
"CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj" \
"CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj" \
"CMakeFiles/opencvtest.dir/src/networking.cpp.obj"

# External object files for target opencvtest
opencvtest_EXTERNAL_OBJECTS =

opencvtest.exe: CMakeFiles/opencvtest.dir/src/main.cpp.obj
opencvtest.exe: CMakeFiles/opencvtest.dir/src/video_capture.cpp.obj
opencvtest.exe: CMakeFiles/opencvtest.dir/src/video_streaming.cpp.obj
opencvtest.exe: CMakeFiles/opencvtest.dir/src/telemetry.cpp.obj
opencvtest.exe: CMakeFiles/opencvtest.dir/src/networking.cpp.obj
opencvtest.exe: CMakeFiles/opencvtest.dir/build.make
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: C:/Users/Hp/Desktop/Controlonai/opencv/build/x64/vc16/lib/opencv_world480d.lib
opencvtest.exe: CMakeFiles/opencvtest.dir/linkLibs.rsp
opencvtest.exe: CMakeFiles/opencvtest.dir/objects1.rsp
opencvtest.exe: CMakeFiles/opencvtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable opencvtest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\opencvtest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opencvtest.dir/build: opencvtest.exe
.PHONY : CMakeFiles/opencvtest.dir/build

CMakeFiles/opencvtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\opencvtest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/opencvtest.dir/clean

CMakeFiles/opencvtest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Hp\Desktop\Controlonai\Project C:\Users\Hp\Desktop\Controlonai\Project C:\Users\Hp\Desktop\Controlonai\Project\build C:\Users\Hp\Desktop\Controlonai\Project\build C:\Users\Hp\Desktop\Controlonai\Project\build\CMakeFiles\opencvtest.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/opencvtest.dir/depend

