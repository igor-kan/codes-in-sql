# Core computational routine for Repeatable Read Optimistic Row Version Validation Trigger
# Module: optimistic_mvcc_validator

def compute_optimistic_mvcc_validator(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
