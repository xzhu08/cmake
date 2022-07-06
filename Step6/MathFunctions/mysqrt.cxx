#include <iostream>
#include "Table.h"

// Calculate square root by using Newton method.
// f(x0) / (x0 - x1) = f^'(x0)
// x1 = x0 - f(x0) / f^'(x0)
// x = x - (a - x^2) / (-2x)
// x = x + 0.5 * (a - x^2) / x

double mysqrt(double a) {
	if (a <= 0) {
		return 0;
	}

	double x = a;

	if(a >= 1 && a <= 10) {
		std::cout << "Use the table to help find an initial value " << std::endl;
		x = sqrtTable[static_cast<int>(a)];
	}

	for (int i = 0; i <  10; i++) {
		if (x <= 0) {
			x = 0.1;
		}
		double delta = a - x * x;
		x = x + 0.5 * delta / x;
		std::cout << "Computing sqrt of " << a << " to be " << x << std::endl;
	}

	return x;
} 