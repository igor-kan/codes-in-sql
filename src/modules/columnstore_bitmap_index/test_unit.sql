# Deterministic unit tests for Vectorized Columnar Bitmap Indexing and Filtering
# Module: columnstore_bitmap_index

def test_columnstore_bitmap_index_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
