WITH RECURSIVE seq(k) AS (SELECT 20 UNION ALL SELECT k + 1 FROM seq WHERE k < 39)
INSERT INTO gl_journals (journal_id, posted, memo)
SELECT k, 0, 'Tx #' || k FROM seq;

INSERT INTO gl_lines (line_id, journal_id, acct_id, amount_cents)
SELECT journal_id * 10 + 1, journal_id, 3, (journal_id * 100) FROM gl_journals WHERE journal_id >= 20;

INSERT INTO gl_lines (line_id, journal_id, acct_id, amount_cents)
SELECT journal_id * 10 + 2, journal_id, 1, -(journal_id * 100) FROM gl_journals WHERE journal_id >= 20;

UPDATE gl_journals SET posted = 1 WHERE journal_id >= 20;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'zero_unbalanced_prop',
       CASE WHEN (SELECT COUNT(*) FROM v_unbalanced_journals) = 0 THEN 1 ELSE 0 END;
