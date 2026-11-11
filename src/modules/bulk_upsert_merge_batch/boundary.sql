# Boundary validation and exceptional input guarding for High-Throughput Atomic MERGE Batch Processing Procedure
# Module: bulk_upsert_merge_batch

def sanitize_bulk_upsert_merge_batch_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
