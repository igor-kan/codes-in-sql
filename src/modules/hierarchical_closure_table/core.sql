# Core computational routine for Transitive Closure Table for High-Speed DAG Queries
# Module: hierarchical_closure_table

def compute_hierarchical_closure_table(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
