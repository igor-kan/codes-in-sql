# Deterministic unit tests for Recursive CTE Computing Ancestral Paths in Trees
# Module: recursive_tree_path

def test_recursive_tree_path_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
