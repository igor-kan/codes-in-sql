INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'global_trial_balance_zero',
       CASE WHEN (SELECT COALESCE(SUM(balance_cents), 0) FROM v_trial_balance) = 0 THEN 1 ELSE 0 END;
