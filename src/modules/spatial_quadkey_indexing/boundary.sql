# Boundary validation and exceptional input guarding for Spatial QuadKey Hierarchical Tile Bounding Index Queries
# Module: spatial_quadkey_indexing

def sanitize_spatial_quadkey_indexing_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
