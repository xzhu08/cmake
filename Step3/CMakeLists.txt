cmake_minimum_required(VERSION  3.10)

# set the project name
project(Tutorial VERSION 1.0)

#specify c++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# make MathFunctions optional
option(USE_MYMATH "Use tutorial provided math functions" ON)

# set configure file
configure_file(TutorialConfig.h.in TutorialConfig.h)

# define additional library
if(USE_MYMATH)
	# add the MathFunctions library
	add_subdirectory(MathFunctions)
	list(APPEND EXTRA_LIBS MathFunctions)
endif()

# add the executable
add_executable(Tutorial tutorial.cxx)

target_link_libraries(Tutorial PUBLIC ${EXTRA_LIBS})
target_include_directories(Tutorial PUBLIC 
						   "${PROJECT_BINARY_DIR}"
						   )