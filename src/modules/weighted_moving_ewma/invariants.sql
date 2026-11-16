INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'ewma_convex_hull_bound',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_ewma_envelope_stats
WHERE min_ewma < min_obs - 1e-9 OR max_ewma > max_obs + 1e-9;
