# Core computational routine for Vectorized Columnstore Cube Multidimensional Aggregates
# Module: columnstore_cube_aggregate

def compute_columnstore_cube_aggregate(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
