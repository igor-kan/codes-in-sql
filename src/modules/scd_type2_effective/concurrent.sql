INSERT INTO customer_tier_scd2 (customer_id, tier_code, valid_from, valid_to, is_current)
VALUES (1, 'FREE', 0, 999999999, 1);

BEGIN IMMEDIATE;
UPDATE customer_tier_scd2 SET valid_to = 100, is_current = 0 WHERE customer_id = 1 AND is_current = 1;
INSERT INTO customer_tier_scd2 (customer_id, tier_code, valid_from, valid_to, is_current)
VALUES (1, 'PRO', 100, 999999999, 1);
INSERT INTO scd_audit_log (check_name, detail) VALUES ('scd_rotate', 'rotated customer 1 to PRO at t=100');
COMMIT;
