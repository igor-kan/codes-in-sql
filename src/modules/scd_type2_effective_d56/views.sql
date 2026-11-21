CREATE VIEW v_d56_scd_ok AS SELECT eid, COUNT(*) AS ver_cnt, MAX(valid_to) AS max_to
FROM d56_scd2 GROUP BY eid;
INSERT OR IGNORE INTO scd_type2_effective_d56_meta VALUES ('module', 'scd_type2_effective_d56');
