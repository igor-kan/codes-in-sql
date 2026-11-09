# Core computational routine for System-Versioned Temporal Table with History Triggers
# Module: temporal_table_versioning

def compute_temporal_table_versioning(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
