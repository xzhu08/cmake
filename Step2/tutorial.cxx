#include <cmath>
#include <iostream>
#include <string>

#include "TutorialConfig.h"
#include "MathFunctions.h"

int main(int argc, char** argv) {
	if(argc < 2) {
		std::cout << argv[0] << ": Version = " << PROJECT_VERSION_MAJOR << "."
			<< PROJECT_VERSION_MINOR << std::endl;
		std::cout << argv[0] << ": Usage [Number]" << std::endl;
		return 1;
	}

	double input_value = std::stod(argv[1]);
	double output_value = mysqrt(input_value);
	std::cout << argv[0] << ": " << output_value << std::endl;
	return 0;
}