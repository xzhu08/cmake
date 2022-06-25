#include <cmath>
#include <iostream>
#include <string>

#include "TutorialConfig.h"
#ifdef USE_MYMATH
#include "MathFunctions.h"
#endif

int main(int argc, char** argv) {
	if(argc < 2) {
		std::cout << argv[0] << ": Version = " << PROJECT_VERSION_MAJOR << "."
			<< PROJECT_VERSION_MINOR << std::endl;
		std::cout << argv[0] << ": Usage [Number]" << std::endl;
		return 1;
	}

	const double input_value = std::stod(argv[1]);
#ifdef USE_MYMATH
	const double output_value = mysqrt(input_value);
#else
	const double output_value = sqrt(input_value);
#endif
	std::cout << argv[0] << ": " << output_value << std::endl;
	return 0;
}