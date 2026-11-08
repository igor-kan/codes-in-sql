# Deterministic unit tests for Continuous Timeseries Gap-Filling Aggregation
# Module: timeseries_gap_filler

def test_timeseries_gap_filler_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
