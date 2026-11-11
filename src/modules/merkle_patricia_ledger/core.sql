# Core computational routine for Cryptographic Hash-Chained Audit Ledger with Proof Queries
# Module: merkle_patricia_ledger

def compute_merkle_patricia_ledger(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
