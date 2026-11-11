# Core computational routine for Vectorized Columnstore Rolling Window Multi-Aggregates
# Module: columnstore_window_aggregates

def compute_columnstore_window_aggregates(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
