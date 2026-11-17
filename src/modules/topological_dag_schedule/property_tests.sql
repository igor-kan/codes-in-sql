CREATE TEMP TABLE _topological_dag_schedule_prop(flag INTEGER);
CREATE TEMP TRIGGER _topological_dag_schedule_prop_trg BEFORE INSERT ON _topological_dag_schedule_prop
BEGIN SELECT CASE WHEN NOT ((SELECT max_wave FROM v_task_schedule WHERE tid='D') = 2) THEN RAISE(ABORT, 'property assertion failed for topological_dag_schedule') END; END;
INSERT INTO _topological_dag_schedule_prop VALUES (1);
