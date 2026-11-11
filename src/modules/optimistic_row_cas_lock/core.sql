# Core computational routine for Optimistic Concurrency Control via Atomic CAS Row Tokens
# Module: optimistic_row_cas_lock

def compute_optimistic_row_cas_lock(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
