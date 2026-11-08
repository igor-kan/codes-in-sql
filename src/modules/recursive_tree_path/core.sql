# Core computational routine for Recursive CTE Computing Ancestral Paths in Trees
# Module: recursive_tree_path

def compute_recursive_tree_path(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
