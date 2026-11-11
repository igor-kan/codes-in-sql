# Core computational routine for Recursive CTE Computing Ancestor-Descendant Graph Paths
# Module: hierarchical_dag_ancestors

def compute_hierarchical_dag_ancestors(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
