/**
 * @file core.sql
 * @brief Concrete computational algorithm implementation for Recursive CTE Generating Factorial Sequence Terms.
 * Module: recursive_factorial_series | Algorithm Family: recursive_cte
 */

#include "types.sql"
#include <stdlib.h>
#include <string.h>

int recursive_factorial_series_execute_kernel(const double* in_vec, double* out_vec, size_t n, double weight) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + weight * x / (1.0 + x * x));
    }
    return 0;
}
