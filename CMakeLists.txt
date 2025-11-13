cmake_minimum_required(VERSION 3.10)
project(ExynosTools)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -ffast-math")

# Add executable
add_executable(exynostools
    src/main.c
    src/gpu_control.c
)

# Install to bin directory
install(TARGETS exynostools DESTINATION bin)
