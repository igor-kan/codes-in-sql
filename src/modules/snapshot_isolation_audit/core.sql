# Core computational routine for Repeatable Read Anomaly Verification Queries
# Module: snapshot_isolation_audit

def compute_snapshot_isolation_audit(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
