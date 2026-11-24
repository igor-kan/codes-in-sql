INSERT INTO d59_manifest VALUES (1),(2),(3),(4); INSERT INTO d59_shipped VALUES (1),(3);
CREATE TEMP TABLE _anti_join_missing_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _anti_join_missing_d59_chk_trg BEFORE INSERT ON _anti_join_missing_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_missing) = 2) THEN RAISE(ABORT, 'unit assertion failed for anti_join_missing_d59') END; END;
INSERT INTO _anti_join_missing_d59_chk VALUES (1);
