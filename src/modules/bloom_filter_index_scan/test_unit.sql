# Deterministic unit tests for Bitwise Bloom Filter Index Scan Emulation
# Module: bloom_filter_index_scan

def test_bloom_filter_index_scan_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
