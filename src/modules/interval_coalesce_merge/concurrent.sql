BEGIN IMMEDIATE;
DELETE FROM merged_intervals;
INSERT INTO merged_intervals (resource_id, island_id, merged_start, merged_end)
SELECT resource_id, island_id, merged_start, merged_end FROM v_coalesced_islands;
INSERT INTO intv_audit_log (check_name, detail) VALUES ('coalesce_commit', 'materialized islands');
COMMIT;
