# Deterministic unit tests for Vectorized Columnstore Rolling Window Multi-Aggregates
# Module: columnstore_window_aggregates

def test_columnstore_window_aggregates_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
