CREATE TEMP TABLE _running_sum_partition_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _running_sum_partition_d57_prop_trg BEFORE INSERT ON _running_sum_partition_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d57_bal WHERE run_bal < 0) = 1) THEN RAISE(ABORT, 'property assertion failed for running_sum_partition_d57') END; END;
INSERT INTO _running_sum_partition_d57_prop VALUES (1);
