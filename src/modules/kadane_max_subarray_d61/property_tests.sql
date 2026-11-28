CREATE TEMP TABLE _kadane_max_subarray_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _kadane_max_subarray_d61_prop_trg BEFORE INSERT ON _kadane_max_subarray_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(best_gain >= 0) FROM v_d61_kadane_gain) = 1) THEN RAISE(ABORT, 'property assertion failed for kadane_max_subarray_d61') END; END;
INSERT INTO _kadane_max_subarray_d61_prop VALUES (1);
