# Core computational routine for High-Throughput Atomic MERGE Batch Processing Procedure
# Module: bulk_upsert_merge_batch

def compute_bulk_upsert_merge_batch(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
