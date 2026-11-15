INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'nonneg_roll_std',
       CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_rolling_zscores WHERE roll_std < 0.0;
