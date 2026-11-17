CREATE VIEW v_task_schedule AS WITH RECURSIVE sch(tid, wave, earliest_finish) AS (SELECT t.tid, 0, t.dur
FROM tasks t
WHERE NOT EXISTS (SELECT 1
FROM task_deps d
WHERE d.child = t.tid)
UNION ALL SELECT t.tid, s.wave + 1, s.earliest_finish + t.dur
FROM sch s JOIN task_deps d ON s.tid = d.parent JOIN tasks t ON d.child = t.tid
WHERE s.wave < 16) SELECT tid, MAX(wave) AS max_wave, MAX(earliest_finish) AS finish_time
FROM sch GROUP BY tid;
INSERT OR IGNORE INTO topological_dag_schedule_meta VALUES ('module', 'topological_dag_schedule');
