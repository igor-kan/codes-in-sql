# Deterministic unit tests for Automated Range Table Partition Pruner and Archiver
# Module: range_partition_pruner

def test_range_partition_pruner_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
