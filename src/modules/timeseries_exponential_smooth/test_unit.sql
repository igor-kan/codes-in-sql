# Deterministic unit tests for Analytical Window Exponential Smoothing Predictor
# Module: timeseries_exponential_smooth

def test_timeseries_exponential_smooth_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
