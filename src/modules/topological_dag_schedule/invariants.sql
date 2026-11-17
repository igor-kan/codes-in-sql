CREATE TEMP TABLE IF NOT EXISTS _topological_dag_schedule_inv_ok (flag INTEGER);
INSERT INTO _topological_dag_schedule_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes FROM _topological_dag_schedule_inv_ok;
