# Boundary validation and exceptional input guarding for Repeatable Read Optimistic Row Version Validation Trigger
# Module: optimistic_mvcc_validator

def sanitize_optimistic_mvcc_validator_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
