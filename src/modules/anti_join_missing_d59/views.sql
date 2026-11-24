CREATE VIEW v_d59_missing AS SELECT m.mid
FROM d59_manifest m LEFT JOIN d59_shipped s ON m.mid = s.mid
WHERE s.mid IS NULL;
INSERT OR IGNORE INTO anti_join_missing_d59_meta VALUES ('module', 'anti_join_missing_d59');
