# Core computational routine for Dynamic Partition Detach and Drop Automation
# Module: partition_retention_purge

def compute_partition_retention_purge(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
