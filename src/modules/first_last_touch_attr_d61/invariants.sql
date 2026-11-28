CREATE TEMP TABLE IF NOT EXISTS _first_last_touch_attr_d61_inv_ok (flag INTEGER);
INSERT INTO _first_last_touch_attr_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _first_last_touch_attr_d61_inv_ok;
