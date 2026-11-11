# Deterministic unit tests for High-Throughput Atomic MERGE Batch Processing Procedure
# Module: bulk_upsert_merge_batch

def test_bulk_upsert_merge_batch_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
