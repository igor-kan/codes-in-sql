# Core computational routine for Automated Range Table Partition Pruner and Archiver
# Module: range_partition_pruner

def compute_range_partition_pruner(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
