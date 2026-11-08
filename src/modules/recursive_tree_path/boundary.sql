# Boundary validation and exceptional input guarding for Recursive CTE Computing Ancestral Paths in Trees
# Module: recursive_tree_path

def sanitize_recursive_tree_path_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
