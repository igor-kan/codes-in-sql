BEGIN IMMEDIATE;
INSERT INTO topological_dag_schedule_runs (ok, note) VALUES (1, 'tx_update');
UPDATE topological_dag_schedule_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
