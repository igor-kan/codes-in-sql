# Core computational routine for Vectorized Columnar Bitmap Indexing and Filtering
# Module: columnstore_bitmap_index

def compute_columnstore_bitmap_index(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
