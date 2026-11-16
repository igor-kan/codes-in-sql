CREATE VIEW v_unbalanced_journals AS
SELECT journal_id, net_cents
FROM v_journal_balances
WHERE posted = 1 AND net_cents != 0;
