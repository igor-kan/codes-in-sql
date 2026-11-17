INSERT INTO tasks VALUES ('A',3),('B',5),('C',2),('D',4); INSERT INTO task_deps VALUES ('A','C'),('B','C'),('C','D');
CREATE TEMP TABLE _topological_dag_schedule_chk(flag INTEGER);
CREATE TEMP TRIGGER _topological_dag_schedule_chk_trg BEFORE INSERT ON _topological_dag_schedule_chk
BEGIN SELECT CASE WHEN NOT ((SELECT finish_time FROM v_task_schedule WHERE tid='D') = 11) THEN RAISE(ABORT, 'unit assertion failed for topological_dag_schedule') END; END;
INSERT INTO _topological_dag_schedule_chk VALUES (1);
