# Boundary validation and exceptional input guarding for Spatial Bounding Box R-Tree Indexing and Joins
# Module: geospatial_rtree_bounding

def sanitize_geospatial_rtree_bounding_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
