INSERT INTO d58_emp VALUES (1,'eng',120),(2,'eng',120),(3,'eng',100),(4,'eng',80);
CREATE TEMP TABLE _dense_rank_topn_d58_chk(flag INTEGER);
CREATE TEMP TRIGGER _dense_rank_topn_d58_chk_trg BEFORE INSERT ON _dense_rank_topn_d58_chk
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d58_top2 WHERE dept='eng') = 3 AND (SELECT MIN(sal) FROM v_d58_top2 WHERE dept='eng') = 100) THEN RAISE(ABORT, 'unit assertion failed for dense_rank_topn_d58') END; END;
INSERT INTO _dense_rank_topn_d58_chk VALUES (1);
