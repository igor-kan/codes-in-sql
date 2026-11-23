CREATE INDEX IF NOT EXISTS idx_orphan_fk_audit_d58_runs_ok ON orphan_fk_audit_d58_runs(ok);
SELECT COUNT(*) AS run_count
FROM orphan_fk_audit_d58_runs
WHERE ok = 1;
