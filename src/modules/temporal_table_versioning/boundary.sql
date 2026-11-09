# Boundary validation and exceptional input guarding for System-Versioned Temporal Table with History Triggers
# Module: temporal_table_versioning

def sanitize_temporal_table_versioning_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
