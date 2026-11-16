CREATE INDEX idx_gl_lines_journal ON gl_lines (journal_id, acct_id);
CREATE INDEX idx_gl_lines_acct ON gl_lines (acct_id, amount_cents);

CREATE VIEW v_acct_type_totals AS
SELECT acct_type, SUM(balance_cents) AS type_net_cents
FROM v_trial_balance
GROUP BY acct_type;
