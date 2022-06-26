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

target_link_libraries(Tutorial PUBLIC ${EXTRA_LIBS})
target_include_directories(Tutorial PUBLIC "${PROJECT_BINARY_DIR}")

install(TARGETS Tutorial DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h" DESTINATION include)

enable_testing()

add_test(NAME Runs COMMAND Tutorial 23)

add_test(NAME Usage COMMAND Tutorial)
set_tests_properties(Usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage*")

function(do_test target arg result)
	add_test(NAME Comp${arg} COMMAND ${target} ${arg})
	set_tests_properties(Comp${arg} PROPERTIES PASS_REGULAR_EXPRESSION ${result})
endfunction()

do_test(Tutorial 4 "Tutorial: 2")
do_test(Tutorial 9 "Tutorial: 3")
do_test(Tutorial 5 "Tutorial: 2.236")
do_test(Tutorial 7 "Tutorial: 2.645")
do_test(Tutorial 25 "Tutorial: 5")
do_test(Tutorial -25 "Tutorial: (-nan|nan|0)")
do_test(Tutorial 0.0001 "Tutorial: 0.01")