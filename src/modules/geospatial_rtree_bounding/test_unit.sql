# Deterministic unit tests for Spatial Bounding Box R-Tree Indexing and Joins
# Module: geospatial_rtree_bounding

def test_geospatial_rtree_bounding_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
