# Boundary validation and exceptional input guarding for Recursive CTE Dijkstra Shortest Path Traversal
# Module: graph_shortest_path_cte

def sanitize_graph_shortest_path_cte_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
