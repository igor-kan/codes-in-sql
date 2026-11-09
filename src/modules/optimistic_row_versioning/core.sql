# Core computational routine for Optimistic Concurrency Control via UUID Row Tokens
# Module: optimistic_row_versioning

def compute_optimistic_row_versioning(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
