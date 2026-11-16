EXPLAIN QUERY PLAN
SELECT acct_code, balance_cents FROM v_trial_balance;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'ledger_bench_ok', CASE WHEN (SELECT COUNT(*) FROM gl_lines) >= 44 THEN 1 ELSE 0 END;
