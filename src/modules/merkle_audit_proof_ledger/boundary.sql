# Boundary validation and exceptional input guarding for Cryptographic Hash-Chained Audit Ledger with Proofs
# Module: merkle_audit_proof_ledger

def sanitize_merkle_audit_proof_ledger_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
