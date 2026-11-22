CREATE TEMP TABLE _dedup_latest_row_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _dedup_latest_row_d57_prop_trg BEFORE INSERT ON _dedup_latest_row_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(DISTINCT eid) FROM v_d57_active) = (SELECT COUNT(*) FROM v_d57_active)) THEN RAISE(ABORT, 'property assertion failed for dedup_latest_row_d57') END; END;
INSERT INTO _dedup_latest_row_d57_prop VALUES (1);
