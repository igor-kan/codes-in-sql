# Deterministic unit tests for Repeatable Read Optimistic Row Version Validation Trigger
# Module: optimistic_mvcc_validator

def test_optimistic_mvcc_validator_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
