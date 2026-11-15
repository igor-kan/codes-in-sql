CREATE INDEX idx_raw_intervals_res_span
ON raw_intervals (resource_id, start_ts, end_ts);

CREATE VIEW v_total_merged_duration AS
SELECT resource_id, SUM(merged_end - merged_start) AS covered_span
FROM v_coalesced_islands
GROUP BY resource_id;
