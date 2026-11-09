# Core computational routine for Recursive CTE Dijkstra Shortest Path Traversal
# Module: graph_shortest_path_cte

def compute_graph_shortest_path_cte(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
