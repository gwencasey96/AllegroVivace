
cmake_minimum_required(VERSION 3.18.4)
project (hello)
add_executable(hello hello.c)
target_link_libraries(hello allegro)
target_link_libraries(hello alegro_font)

