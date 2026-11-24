CREATE TEMP TABLE _interval_overlap_sql_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _interval_overlap_sql_d59_prop_trg BEFORE INSERT ON _interval_overlap_sql_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_conflicts WHERE r1 >= r2) = 0) THEN RAISE(ABORT, 'property assertion failed for interval_overlap_sql_d59') END; END;
INSERT INTO _interval_overlap_sql_d59_prop VALUES (1);
