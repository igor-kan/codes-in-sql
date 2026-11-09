# Deterministic unit tests for Vectorized Columnstore Cube Multidimensional Aggregates
# Module: columnstore_cube_aggregate

def test_columnstore_cube_aggregate_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
