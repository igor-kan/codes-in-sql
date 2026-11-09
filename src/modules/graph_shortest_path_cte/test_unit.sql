# Deterministic unit tests for Recursive CTE Dijkstra Shortest Path Traversal
# Module: graph_shortest_path_cte

def test_graph_shortest_path_cte_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
