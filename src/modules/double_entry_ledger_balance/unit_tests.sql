INSERT INTO gl_accounts (acct_id, acct_code, acct_type) VALUES
(1, '1000-CASH', 'ASSET'),
(2, '3000-EQUITY', 'EQUITY'),
(3, '5000-CLOUD', 'EXPENSE');

INSERT INTO gl_journals (journal_id, posted, memo) VALUES (10, 0, 'Seed capital');
INSERT INTO gl_lines (line_id, journal_id, acct_id, amount_cents) VALUES
(101, 10, 1, 500000),
(102, 10, 2, -500000);
UPDATE gl_journals SET posted = 1 WHERE journal_id = 10;

INSERT INTO gl_journals (journal_id, posted, memo) VALUES (11, 0, 'Server bill');
INSERT INTO gl_lines (line_id, journal_id, acct_id, amount_cents) VALUES
(103, 11, 3, 12500),
(104, 11, 1, -12500);
UPDATE gl_journals SET posted = 1 WHERE journal_id = 11;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'cash_balance_unit',
       CASE WHEN (SELECT balance_cents FROM v_trial_balance WHERE acct_id = 1) = 487500 THEN 1 ELSE 0 END;
