# Boundary validation and exceptional input guarding for Automated Range Partition Rotation and Archival Script
# Module: temporal_range_archiver

def sanitize_temporal_range_archiver_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
