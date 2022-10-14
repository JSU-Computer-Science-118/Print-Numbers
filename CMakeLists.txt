cmake_minimum_required(VERSION 3.14)
project(my_project)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)

include(GoogleTest)
include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.12.1
)

FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(
  number_printer_test
  number_printer_test.cpp
)
target_link_libraries(
  number_printer_test
  GTest::gtest_main
)


gtest_discover_tests(number_printer_test)



