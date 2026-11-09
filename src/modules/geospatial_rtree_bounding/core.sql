# Core computational routine for Spatial Bounding Box R-Tree Indexing and Joins
# Module: geospatial_rtree_bounding

def compute_geospatial_rtree_bounding(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
