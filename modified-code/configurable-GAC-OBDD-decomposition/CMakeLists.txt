cmake_minimum_required(VERSION 3.0.0)

set (CMAKE_CXX_STANDARD 11)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

set(CMAKE_CXX_FLAGS "-lboost_program_options")
add_compile_options("-L/usr/lib/x86_64-linux-gnu")
add_compile_options("-lboost_program_options")

include_directories($ENV{GECODE_HOME}
                    $ENV{LD_LIBRARY_PATH})
link_directories($ENV{GECODE_HOME}
                 $ENV{LD_LIBRARY_PATH})

add_subdirectory(src)
add_executable(decomposed src/main.cpp)
target_link_libraries(decomposed libDecomposed
                                 gecodedriver
                                 gecodekernel
                                 gecodesupport
                                 gecodeint 
                                 gecodefloat
                                 gecodesearch
                                 gecodeminimodel
                                 boost_program_options)

# FIND_PACKAGE(Boost COMPONENTS program_options REQUIRED)
# INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
# TARGET_LINK_LIBRARIES(target ${Boost_LIBRARIES})
