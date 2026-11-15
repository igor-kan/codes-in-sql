CREATE VIEW v_interval_coverage_check AS
SELECT r.interval_id
FROM raw_intervals r
LEFT JOIN v_coalesced_islands m
  ON m.resource_id = r.resource_id
 AND r.start_ts >= m.merged_start
 AND r.end_ts <= m.merged_end
WHERE m.island_id IS NULL;
