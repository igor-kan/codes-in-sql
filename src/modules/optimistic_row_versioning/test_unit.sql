# Deterministic unit tests for Optimistic Concurrency Control via UUID Row Tokens
# Module: optimistic_row_versioning

def test_optimistic_row_versioning_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
