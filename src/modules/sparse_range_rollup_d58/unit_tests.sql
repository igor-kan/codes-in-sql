INSERT INTO d58_tickets VALUES (1,25),(2,100),(3,150),(4,300);
CREATE TEMP TABLE _sparse_range_rollup_d58_chk(flag INTEGER);
CREATE TEMP TRIGGER _sparse_range_rollup_d58_chk_trg BEFORE INSERT ON _sparse_range_rollup_d58_chk
BEGIN SELECT CASE WHEN NOT ((SELECT tier_sum FROM v_d58_tiers WHERE tier='med') = 250 AND (SELECT cnt FROM v_d58_tiers WHERE tier='large') = 1) THEN RAISE(ABORT, 'unit assertion failed for sparse_range_rollup_d58') END; END;
INSERT INTO _sparse_range_rollup_d58_chk VALUES (1);
