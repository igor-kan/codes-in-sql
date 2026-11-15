INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'fifo_no_oversold',
       CASE WHEN (SELECT COUNT(*) FROM v_oversold_skus) = 0 THEN 1 ELSE 0 END;
