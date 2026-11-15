INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'every_interval_covered',
       CASE WHEN (SELECT COUNT(*) FROM v_interval_coverage_check) = 0 THEN 1 ELSE 0 END;
