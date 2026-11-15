CREATE VIEW v_service_quantiles AS
WITH targets AS (
    SELECT DISTINCT
        service_name,
        n_total,
        1.0 + 0.50 * (n_total - 1) AS pos50,
        1.0 + 0.90 * (n_total - 1) AS pos90,
        1.0 + 0.95 * (n_total - 1) AS pos95
    FROM v_ranked_samples
)
SELECT
    t.service_name,
    t.n_total,
    SUM(CASE
        WHEN r.rn = CAST(t.pos50 AS INTEGER) THEN (1.0 - (t.pos50 - CAST(t.pos50 AS INTEGER))) * r.latency_ms
        ELSE 0.0
    END) + SUM(CASE
        WHEN r.rn = CAST(t.pos50 AS INTEGER) + 1 THEN (t.pos50 - CAST(t.pos50 AS INTEGER)) * r.latency_ms
        ELSE 0.0
    END) AS p50_ms,
    SUM(CASE
        WHEN r.rn = CAST(t.pos90 AS INTEGER) THEN (1.0 - (t.pos90 - CAST(t.pos90 AS INTEGER))) * r.latency_ms
        ELSE 0.0
    END) + SUM(CASE
        WHEN r.rn = CAST(t.pos90 AS INTEGER) + 1 THEN (t.pos90 - CAST(t.pos90 AS INTEGER)) * r.latency_ms
        ELSE 0.0
    END) AS p90_ms,
    SUM(CASE
        WHEN r.rn = CAST(t.pos95 AS INTEGER) THEN (1.0 - (t.pos95 - CAST(t.pos95 AS INTEGER))) * r.latency_ms
        ELSE 0.0
    END) + SUM(CASE
        WHEN r.rn = CAST(t.pos95 AS INTEGER) + 1 THEN (t.pos95 - CAST(t.pos95 AS INTEGER)) * r.latency_ms
        ELSE 0.0
    END) AS p95_ms
FROM targets t
JOIN v_ranked_samples r ON r.service_name = t.service_name
GROUP BY t.service_name, t.n_total;
