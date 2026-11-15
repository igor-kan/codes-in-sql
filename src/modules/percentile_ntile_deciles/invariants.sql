INSERT INTO _sql_assertions (assertion_name, passed)
SELECT
    'cdf_range_valid',
    CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_cdf_bounds_violations;
