INSERT INTO d57_cdc VALUES (1,1,0,'new'),(1,2,0,'paid'),(2,1,0,'open'),(2,2,1,'closed');
CREATE TEMP TABLE _dedup_latest_row_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _dedup_latest_row_d57_chk_trg BEFORE INSERT ON _dedup_latest_row_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT state FROM v_d57_active WHERE eid=1) = 'paid' AND (SELECT COUNT(*) FROM v_d57_active) = 1) THEN RAISE(ABORT, 'unit assertion failed for dedup_latest_row_d57') END; END;
INSERT INTO _dedup_latest_row_d57_chk VALUES (1);
