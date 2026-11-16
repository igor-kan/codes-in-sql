CREATE VIEW v_journal_balances AS
SELECT
    j.journal_id,
    j.posted,
    COUNT(l.line_id) AS line_count,
    COALESCE(SUM(l.amount_cents), 0) AS net_cents
FROM gl_journals j
LEFT JOIN gl_lines l ON l.journal_id = j.journal_id
GROUP BY j.journal_id, j.posted;
