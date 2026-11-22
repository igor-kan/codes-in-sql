CREATE VIEW v_d57_active AS WITH r AS (SELECT eid, ver, deleted, state, ROW_NUMBER() OVER (PARTITION BY eid ORDER BY ver DESC) AS rn
FROM d57_cdc) SELECT eid, ver, state
FROM r
WHERE rn = 1 AND deleted = 0;
INSERT OR IGNORE INTO dedup_latest_row_d57_meta VALUES ('module', 'dedup_latest_row_d57');
