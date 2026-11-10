# Boundary validation and exceptional input guarding for Analytical Window Exponential Smoothing Predictor
# Module: timeseries_exponential_smooth

def sanitize_timeseries_exponential_smooth_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
