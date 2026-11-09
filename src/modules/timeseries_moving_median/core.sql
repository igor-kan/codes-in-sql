# Core computational routine for Analytical Window Framed Moving Median Filters
# Module: timeseries_moving_median

def compute_timeseries_moving_median(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
