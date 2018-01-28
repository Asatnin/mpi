cmake_minimum_required(VERSION 3.9)
project(mpi C)

#set(CMAKE_C_STANDARD 99)

# add extra include directories
include_directories(/Users/azavalin/opt/usr/local/include/)

add_executable(mpi algorithm.c)

set(CMAKE_C_COMPILER "/Users/azavalin/opt/usr/local/bin/mpicc")