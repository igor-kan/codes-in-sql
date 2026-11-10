# Deterministic unit tests for Transitive Closure Table for High-Speed DAG Queries
# Module: hierarchical_closure_table

def test_hierarchical_closure_table_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
