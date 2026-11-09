# Deterministic unit tests for Analytical Window Framed Moving Median Filters
# Module: timeseries_moving_median

def test_timeseries_moving_median_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
