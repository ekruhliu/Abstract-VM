cmake_minimum_required(VERSION 3.9)
project(Abstract_VM)

set(CMAKE_CXX_STANDARD 11)

add_executable(Abstract_VM
        IOperand.hpp
        main.cpp
        Stack.cpp
        Stack.hpp
        Parcer.cpp
        Parcer.hpp)
