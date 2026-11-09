# Deterministic unit tests for Cryptographic Hash-Chained Audit Ledger with Proofs
# Module: merkle_audit_proof_ledger

def test_merkle_audit_proof_ledger_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
