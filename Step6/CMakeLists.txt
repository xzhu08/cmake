cmake_minimum_required(VERSION 3.10)

project(Tutorial VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

option(USE_MYMATH "Use tutorial provided math functions" ON)

configure_file(TutorialConfig.h.in TutorialConfig.h)

if(USE_MYMATH)
	add_subdirectory(MathFunctions)
	list(APPEND EXTRA_LIBS MathFunctions)
endif()

add_executable(Tutorial tutorial.cxx)

target_include_directories(Tutorial PUBLIC "${PROJECT_BINARY_DIR}")
target_link_libraries(Tutorial PUBLIC ${EXTRA_LIBS})

install(TARGETS Tutorial DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h" DESTINATION include)

enable_testing()

add_test(NAME Run COMMAND Tutorial 23)

add_test(NAME Usage COMMAND Tutorial)
set_tests_properties(Usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage*")

function(do_test input output)
	add_test(NAME Comp${input} COMMAND Tutorial ${input})
	set_tests_properties(Comp${input} PROPERTIES PASS_REGULAR_EXPRESSION "Tutorial: ${output}")
endfunction()

do_test(4 "2")
do_test(9 "3")
do_test(5 "2.236")
do_test(7 "2.645")
do_test(25 "5")
do_test(-25 "(-nan|nan|0)")
do_test(0.0001 "0.01")