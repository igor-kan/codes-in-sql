# Core computational routine for High-Throughput Chunked Upsert with Conflict Handling
# Module: bulk_upsert_chunked_batch

def compute_bulk_upsert_chunked_batch(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
