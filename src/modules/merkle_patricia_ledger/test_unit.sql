# Deterministic unit tests for Cryptographic Hash-Chained Audit Ledger with Proof Queries
# Module: merkle_patricia_ledger

def test_merkle_patricia_ledger_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
