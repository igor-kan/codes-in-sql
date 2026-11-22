INSERT INTO d57_tx VALUES ('A',1,100),('A',2,-40),('A',3,-80),('B',1,50);
CREATE TEMP TABLE _running_sum_partition_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _running_sum_partition_d57_chk_trg BEFORE INSERT ON _running_sum_partition_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT run_bal FROM v_d57_bal WHERE acct='A' AND seq=2) = 60 AND (SELECT run_bal FROM v_d57_bal WHERE acct='A' AND seq=3) = -20) THEN RAISE(ABORT, 'unit assertion failed for running_sum_partition_d57') END; END;
INSERT INTO _running_sum_partition_d57_chk VALUES (1);
