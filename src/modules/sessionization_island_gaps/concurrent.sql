BEGIN IMMEDIATE;
UPDATE session_config
SET idle_gap_sec = 1800, version = version + 1
WHERE id = 1 AND version = 1;
INSERT INTO sess_audit_log (check_name, detail)
SELECT 'config_lock', 'bumped version=' || version FROM session_config WHERE id = 1;
COMMIT;
