CREATE VIEW v_ewma_bands AS
SELECT
    series_id,
    seq_no,
    obs,
    ewma,
    (obs - ewma) AS innovation
FROM v_ewma_series;
