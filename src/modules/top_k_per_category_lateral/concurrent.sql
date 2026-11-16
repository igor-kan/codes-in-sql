BEGIN IMMEDIATE;
INSERT INTO topk_audit_log (check_name, detail)
SELECT 'topk_cfg', 'k=' || k FROM topk_settings WHERE id = 1;
COMMIT;
