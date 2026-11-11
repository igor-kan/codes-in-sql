# Boundary validation and exceptional input guarding for Cryptographic Hash-Chained Audit Ledger with Proof Queries
# Module: merkle_patricia_ledger

def sanitize_merkle_patricia_ledger_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
