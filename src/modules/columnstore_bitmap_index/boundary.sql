# Boundary validation and exceptional input guarding for Vectorized Columnar Bitmap Indexing and Filtering
# Module: columnstore_bitmap_index

def sanitize_columnstore_bitmap_index_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
