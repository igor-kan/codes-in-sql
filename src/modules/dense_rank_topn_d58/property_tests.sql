CREATE TEMP TABLE _dense_rank_topn_d58_prop(flag INTEGER);
CREATE TEMP TRIGGER _dense_rank_topn_d58_prop_trg BEFORE INSERT ON _dense_rank_topn_d58_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(dr) FROM v_d58_top2) <= 2) THEN RAISE(ABORT, 'property assertion failed for dense_rank_topn_d58') END; END;
INSERT INTO _dense_rank_topn_d58_prop VALUES (1);
