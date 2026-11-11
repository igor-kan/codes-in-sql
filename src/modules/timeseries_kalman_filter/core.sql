# Core computational routine for Analytical Window Kalman Filter State Tracking Simulation
# Module: timeseries_kalman_filter

def compute_timeseries_kalman_filter(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
