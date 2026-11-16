CREATE INDEX idx_ticks_series_seq ON metric_ticks (series_id, seq_no);

CREATE VIEW v_latest_ewma AS
SELECT series_id, MAX(seq_no) AS last_seq
FROM v_ewma_series
GROUP BY series_id;
