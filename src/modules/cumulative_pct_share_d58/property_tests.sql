CREATE TEMP TABLE _cumulative_pct_share_d58_prop(flag INTEGER);
CREATE TEMP TRIGGER _cumulative_pct_share_d58_prop_trg BEFORE INSERT ON _cumulative_pct_share_d58_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(cum_pct) FROM v_d58_share) = 1.0) THEN RAISE(ABORT, 'property assertion failed for cumulative_pct_share_d58') END; END;
INSERT INTO _cumulative_pct_share_d58_prop VALUES (1);
