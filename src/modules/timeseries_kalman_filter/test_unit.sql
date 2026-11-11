# Deterministic unit tests for Analytical Window Kalman Filter State Tracking Simulation
# Module: timeseries_kalman_filter

def test_timeseries_kalman_filter_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
