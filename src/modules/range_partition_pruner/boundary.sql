# Boundary validation and exceptional input guarding for Automated Range Table Partition Pruner and Archiver
# Module: range_partition_pruner

def sanitize_range_partition_pruner_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
