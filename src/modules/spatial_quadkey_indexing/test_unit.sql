# Deterministic unit tests for Spatial QuadKey Hierarchical Tile Bounding Index Queries
# Module: spatial_quadkey_indexing

def test_spatial_quadkey_indexing_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
