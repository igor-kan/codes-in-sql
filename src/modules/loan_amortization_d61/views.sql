CREATE VIEW v_d61_amort_schedule AS WITH RECURSIVE s(loan_id, month, balance, interest, principal_paid) AS (SELECT loan_id, 1, principal_cents - MIN(payment_cents, principal_cents), 0, MIN(payment_cents, principal_cents)
FROM d61_loan
UNION ALL SELECT s.loan_id, s.month + 1, s.balance + ((s.balance * l.annual_rate_bp) / 120000) - l.payment_cents, (s.balance * l.annual_rate_bp) / 120000, l.payment_cents
FROM s JOIN d61_loan l ON s.loan_id = l.loan_id
WHERE s.balance > 0 AND s.month < l.months) SELECT loan_id, month, balance, interest, principal_paid
FROM s;
INSERT OR IGNORE INTO loan_amortization_d61_meta VALUES ('module', 'loan_amortization_d61');
