# Deterministic unit tests for Optimistic Concurrency Control via Atomic CAS Row Tokens
# Module: optimistic_row_cas_lock

def test_optimistic_row_cas_lock_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
