# Boundary validation and exceptional input guarding for High-Throughput Chunked Upsert with Conflict Handling
# Module: bulk_upsert_chunked_batch

def sanitize_bulk_upsert_chunked_batch_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
