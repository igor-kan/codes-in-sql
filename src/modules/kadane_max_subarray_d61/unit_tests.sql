INSERT INTO d61_kad_prices VALUES (1,3),(2,-5),(3,4),(4,2),(5,-1),(6,6);
CREATE TEMP TABLE _kadane_max_subarray_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _kadane_max_subarray_d61_chk_trg BEFORE INSERT ON _kadane_max_subarray_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT best_gain FROM v_d61_kadane_gain) = 11) THEN RAISE(ABORT, 'unit assertion failed for kadane_max_subarray_d61') END; END;
INSERT INTO _kadane_max_subarray_d61_chk VALUES (1);
