# CMake generated Testfile for 
# Source directory: /home/zxdan/cmake/Step6
# Build directory: /home/zxdan/cmake/Step6/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Run "/home/zxdan/cmake/Step6/build/Tutorial" "23")
set_tests_properties(Run PROPERTIES  _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;27;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Usage "/home/zxdan/cmake/Step6/build/Tutorial")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage*" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;29;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp4 "/home/zxdan/cmake/Step6/build/Tutorial" "4")
set_tests_properties(Comp4 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 2" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;37;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp9 "/home/zxdan/cmake/Step6/build/Tutorial" "9")
set_tests_properties(Comp9 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 3" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;38;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp5 "/home/zxdan/cmake/Step6/build/Tutorial" "5")
set_tests_properties(Comp5 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 2.236" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;39;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp7 "/home/zxdan/cmake/Step6/build/Tutorial" "7")
set_tests_properties(Comp7 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 2.645" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;40;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp25 "/home/zxdan/cmake/Step6/build/Tutorial" "25")
set_tests_properties(Comp25 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 5" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;41;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp-25 "/home/zxdan/cmake/Step6/build/Tutorial" "-25")
set_tests_properties(Comp-25 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: (-nan|nan|0)" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;42;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
add_test(Comp0.0001 "/home/zxdan/cmake/Step6/build/Tutorial" "0.0001")
set_tests_properties(Comp0.0001 PROPERTIES  PASS_REGULAR_EXPRESSION "Tutorial: 0.01" _BACKTRACE_TRIPLES "/home/zxdan/cmake/Step6/CMakeLists.txt;33;add_test;/home/zxdan/cmake/Step6/CMakeLists.txt;43;do_test;/home/zxdan/cmake/Step6/CMakeLists.txt;0;")
subdirs("MathFunctions")
