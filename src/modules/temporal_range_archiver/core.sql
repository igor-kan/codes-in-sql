# Core computational routine for Automated Range Partition Rotation and Archival Script
# Module: temporal_range_archiver

def compute_temporal_range_archiver(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
