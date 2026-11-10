# Core computational routine for Analytical Window Exponential Smoothing Predictor
# Module: timeseries_exponential_smooth

def compute_timeseries_exponential_smooth(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
