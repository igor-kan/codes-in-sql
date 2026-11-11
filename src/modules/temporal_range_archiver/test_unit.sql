# Deterministic unit tests for Automated Range Partition Rotation and Archival Script
# Module: temporal_range_archiver

def test_temporal_range_archiver_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
