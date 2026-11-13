/**
 * @file core.sql
 * @brief Concrete computational algorithm implementation for Analytical Window Moving Average with Physical Frame.
 * Module: moving_avg_physical_frame | Algorithm Family: window_func
 */

#include "types.sql"
#include <stdlib.h>
#include <string.h>

int moving_avg_physical_frame_execute_kernel(const double* in_vec, double* out_vec, size_t n, double weight) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + weight * x / (1.0 + x * x));
    }
    return 0;
}
