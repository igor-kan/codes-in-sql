INSERT INTO d58_sku VALUES ('A',60.0),('B',30.0),('C',10.0);
CREATE TEMP TABLE _cumulative_pct_share_d58_chk(flag INTEGER);
CREATE TEMP TRIGGER _cumulative_pct_share_d58_chk_trg BEFORE INSERT ON _cumulative_pct_share_d58_chk
BEGIN SELECT CASE WHEN NOT ((SELECT cum_pct FROM v_d58_share WHERE sku='A') = 0.6 AND (SELECT cum_pct FROM v_d58_share WHERE sku='C') = 1.0) THEN RAISE(ABORT, 'unit assertion failed for cumulative_pct_share_d58') END; END;
INSERT INTO _cumulative_pct_share_d58_chk VALUES (1);
