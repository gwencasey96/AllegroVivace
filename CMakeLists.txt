
cmake_minimum_required(VERSION 3.18.4)
project (hello)
add_executable(hello hello.c)
include_directories()#not sure if should include header??
file(GLOB SOURCES "src/*.c")#getting sources with c extension
add_executable(hello ${SOURCES}) #builds executable from source files


