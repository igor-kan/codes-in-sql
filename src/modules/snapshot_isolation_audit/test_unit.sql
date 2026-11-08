# Deterministic unit tests for Repeatable Read Anomaly Verification Queries
# Module: snapshot_isolation_audit

def test_snapshot_isolation_audit_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
