BEGIN IMMEDIATE;
INSERT INTO mkt_audit_log (check_name, detail)
SELECT 'min_support_pair', 'threshold=' || min_pair_orders FROM basket_thresholds WHERE id = 1;
COMMIT;
