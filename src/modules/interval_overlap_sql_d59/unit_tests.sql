INSERT INTO d59_res VALUES (1,'R1',10,20),(2,'R1',20,30),(3,'R1',15,25);
CREATE TEMP TABLE _interval_overlap_sql_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _interval_overlap_sql_d59_chk_trg BEFORE INSERT ON _interval_overlap_sql_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_conflicts) = 2) THEN RAISE(ABORT, 'unit assertion failed for interval_overlap_sql_d59') END; END;
INSERT INTO _interval_overlap_sql_d59_chk VALUES (1);
