# Core computational routine for Bitwise Bloom Filter Index Scan Emulation
# Module: bloom_filter_index_scan

def compute_bloom_filter_index_scan(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
