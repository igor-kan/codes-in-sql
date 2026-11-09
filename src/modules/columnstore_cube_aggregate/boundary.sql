# Boundary validation and exceptional input guarding for Vectorized Columnstore Cube Multidimensional Aggregates
# Module: columnstore_cube_aggregate

def sanitize_columnstore_cube_aggregate_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
