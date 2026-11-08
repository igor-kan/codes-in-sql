# Boundary validation and exceptional input guarding for Bitwise Bloom Filter Index Scan Emulation
# Module: bloom_filter_index_scan

def sanitize_bloom_filter_index_scan_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
