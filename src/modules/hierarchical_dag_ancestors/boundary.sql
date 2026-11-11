# Boundary validation and exceptional input guarding for Recursive CTE Computing Ancestor-Descendant Graph Paths
# Module: hierarchical_dag_ancestors

def sanitize_hierarchical_dag_ancestors_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
