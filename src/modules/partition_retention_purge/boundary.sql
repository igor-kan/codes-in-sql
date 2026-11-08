# Boundary validation and exceptional input guarding for Dynamic Partition Detach and Drop Automation
# Module: partition_retention_purge

def sanitize_partition_retention_purge_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
