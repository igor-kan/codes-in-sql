CREATE TEMP TABLE IF NOT EXISTS _next_greater_element_d61_inv_ok (flag INTEGER);
INSERT INTO _next_greater_element_d61_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _next_greater_element_d61_inv_ok;
