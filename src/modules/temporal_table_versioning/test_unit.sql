# Deterministic unit tests for System-Versioned Temporal Table with History Triggers
# Module: temporal_table_versioning

def test_temporal_table_versioning_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
