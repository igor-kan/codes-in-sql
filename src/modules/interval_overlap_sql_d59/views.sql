CREATE VIEW v_d59_conflicts AS SELECT a.rid AS r1, b.rid AS r2
FROM d59_res a JOIN d59_res b ON a.room = b.room AND a.rid < b.rid AND a.st < b.en AND b.st < a.en;
INSERT OR IGNORE INTO interval_overlap_sql_d59_meta VALUES ('module', 'interval_overlap_sql_d59');
