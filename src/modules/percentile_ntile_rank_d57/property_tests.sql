CREATE TEMP TABLE _percentile_ntile_rank_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _percentile_ntile_rank_d57_prop_trg BEFORE INSERT ON _percentile_ntile_rank_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(prank) FROM v_d57_qrank) = 1.0) THEN RAISE(ABORT, 'property assertion failed for percentile_ntile_rank_d57') END; END;
INSERT INTO _percentile_ntile_rank_d57_prop VALUES (1);
