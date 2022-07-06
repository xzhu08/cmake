add_library(MathFunctions mysqrt.cxx)
target_include_directories(MathFunctions INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

include(CheckCXXSourceCompiles)
check_cxx_source_compiles("
	#include <cmath>
	int main() {
		std::log(1.0);
		return 0;
	}
	" HAVE_LOG)
check_cxx_source_compiles("
	#include <cmath>
	int main() {
		std::exp(1.0);
		return 0;
	}
	" HAVE_EXP)

if(HAVE_EXP AND HAVE_LOG)
	target_compile_definitions(MathFunctions PRIVATE "HAVE_LOG" "HAVE_EXP")
endif()

install(TARGETS MathFunctions DESTINATION lib)
install(FILES MathFunctions.h DESTINATION include)