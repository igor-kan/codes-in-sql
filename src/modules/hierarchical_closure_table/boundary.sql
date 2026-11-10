# Boundary validation and exceptional input guarding for Transitive Closure Table for High-Speed DAG Queries
# Module: hierarchical_closure_table

def sanitize_hierarchical_closure_table_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
