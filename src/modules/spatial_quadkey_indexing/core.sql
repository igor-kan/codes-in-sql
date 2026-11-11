# Core computational routine for Spatial QuadKey Hierarchical Tile Bounding Index Queries
# Module: spatial_quadkey_indexing

def compute_spatial_quadkey_indexing(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
