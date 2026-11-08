# Boundary validation and exceptional input guarding for Repeatable Read Anomaly Verification Queries
# Module: snapshot_isolation_audit

def sanitize_snapshot_isolation_audit_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
