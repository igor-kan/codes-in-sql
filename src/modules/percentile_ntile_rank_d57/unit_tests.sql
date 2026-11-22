INSERT INTO d57_lat VALUES (1,10),(2,20),(3,30),(4,40);
CREATE TEMP TABLE _percentile_ntile_rank_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _percentile_ntile_rank_d57_chk_trg BEFORE INSERT ON _percentile_ntile_rank_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT q4 FROM v_d57_qrank WHERE id=1) = 1 AND (SELECT q4 FROM v_d57_qrank WHERE id=4) = 4 AND (SELECT prank FROM v_d57_qrank WHERE id=1) = 0.0) THEN RAISE(ABORT, 'unit assertion failed for percentile_ntile_rank_d57') END; END;
INSERT INTO _percentile_ntile_rank_d57_chk VALUES (1);
