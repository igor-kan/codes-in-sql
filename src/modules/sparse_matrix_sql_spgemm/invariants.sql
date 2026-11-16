INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'trace_commutativity',
       CASE WHEN ABS(tr_ab - tr_ba) < 1e-9 THEN 1 ELSE 0 END
FROM v_trace_compare;
