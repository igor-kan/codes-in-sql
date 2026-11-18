CREATE VIEW v_benford AS WITH d AS (SELECT CAST(SUBSTR(CAST(CAST(amount AS INTEGER) AS TEXT), 1, 1) AS INTEGER) AS digit
FROM ledger_entries), tot AS (SELECT COUNT(*) AS n
FROM d) SELECT digit, COUNT(*) AS obs_cnt, ROUND(CAST(COUNT(*) AS REAL) / tot.n, 4) AS obs_prob
FROM d CROSS JOIN tot GROUP BY digit;
INSERT OR IGNORE INTO benford_first_digit_audit_meta VALUES ('module', 'benford_first_digit_audit');
