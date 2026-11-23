CREATE TEMP TABLE _sparse_range_rollup_d58_prop(flag INTEGER);
CREATE TEMP TRIGGER _sparse_range_rollup_d58_prop_trg BEFORE INSERT ON _sparse_range_rollup_d58_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(tier_sum) FROM v_d58_tiers) = (SELECT SUM(amt) FROM d58_tickets)) THEN RAISE(ABORT, 'property assertion failed for sparse_range_rollup_d58') END; END;
INSERT INTO _sparse_range_rollup_d58_prop VALUES (1);
