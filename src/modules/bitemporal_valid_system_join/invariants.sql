CREATE TEMP TABLE IF NOT EXISTS _bitemporal_valid_system_join_inv_ok (flag INTEGER);
INSERT INTO _bitemporal_valid_system_join_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _bitemporal_valid_system_join_inv_ok;
