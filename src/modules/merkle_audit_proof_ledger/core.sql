# Core computational routine for Cryptographic Hash-Chained Audit Ledger with Proofs
# Module: merkle_audit_proof_ledger

def compute_merkle_audit_proof_ledger(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
