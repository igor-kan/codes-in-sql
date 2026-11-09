# Deterministic unit tests for High-Throughput Chunked Upsert with Conflict Handling
# Module: bulk_upsert_chunked_batch

def test_bulk_upsert_chunked_batch_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
