# Boundary validation and exceptional input guarding for Optimistic Concurrency Control via Atomic CAS Row Tokens
# Module: optimistic_row_cas_lock

def sanitize_optimistic_row_cas_lock_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
