# Boundary validation and exceptional input guarding for Analytical Window Framed Moving Median Filters
# Module: timeseries_moving_median

def sanitize_timeseries_moving_median_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
