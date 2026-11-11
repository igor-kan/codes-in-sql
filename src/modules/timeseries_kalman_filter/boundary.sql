# Boundary validation and exceptional input guarding for Analytical Window Kalman Filter State Tracking Simulation
# Module: timeseries_kalman_filter

def sanitize_timeseries_kalman_filter_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
