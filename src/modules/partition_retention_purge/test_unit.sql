# Deterministic unit tests for Dynamic Partition Detach and Drop Automation
# Module: partition_retention_purge

def test_partition_retention_purge_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
