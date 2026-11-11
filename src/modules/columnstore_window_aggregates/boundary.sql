# Boundary validation and exceptional input guarding for Vectorized Columnstore Rolling Window Multi-Aggregates
# Module: columnstore_window_aggregates

def sanitize_columnstore_window_aggregates_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
