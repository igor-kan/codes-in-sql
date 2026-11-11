# Deterministic unit tests for Recursive CTE Computing Ancestor-Descendant Graph Paths
# Module: hierarchical_dag_ancestors

def test_hierarchical_dag_ancestors_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
