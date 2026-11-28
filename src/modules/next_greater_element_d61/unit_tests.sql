INSERT INTO d61_series VALUES (1,2),(2,1),(3,3),(4,2),(5,4);
CREATE TEMP TABLE _next_greater_element_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _next_greater_element_d61_chk_trg BEFORE INSERT ON _next_greater_element_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT next_val FROM v_d61_next_greater WHERE seq=1) = 3 AND (SELECT next_seq FROM v_d61_next_greater WHERE seq=2) = 3 AND (SELECT next_val FROM v_d61_next_greater WHERE seq=4) = 4 AND (SELECT COUNT(*) FROM v_d61_next_greater WHERE seq=5 AND next_val IS NULL) = 1) THEN RAISE(ABORT, 'unit assertion failed for next_greater_element_d61') END; END;
INSERT INTO _next_greater_element_d61_chk VALUES (1);
