cmake_minimum_required(VERSION 3.10)
project(opencvtest VERSION 0.1.0)

include(CTest)
enable_testing()

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(opencvtest 
    src/main.cpp
    src/video_capture.cpp
    src/video_streaming.cpp
    src/telemetry.cpp
    src/networking.cpp
)

# Include directories
target_include_directories(${PROJECT_NAME} PRIVATE ${OpenCV_INCLUDE_DIRS} include)

# Link libraries (put system libraries like ws2_32.lib at the end)
target_link_libraries(${PROJECT_NAME} PRIVATE ${OpenCV_LIBS} ws2_32.lib)
