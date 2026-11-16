CREATE VIEW v_trial_balance AS
SELECT
    a.acct_id,
    a.acct_code,
    a.acct_type,
    COALESCE(SUM(l.amount_cents), 0) AS balance_cents
FROM gl_accounts a
LEFT JOIN gl_lines l ON l.acct_id = a.acct_id
JOIN gl_journals j ON j.journal_id = l.journal_id AND j.posted = 1
GROUP BY a.acct_id, a.acct_code, a.acct_type;
