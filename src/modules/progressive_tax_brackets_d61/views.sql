CREATE VIEW v_d61_tax_due AS SELECT t.tid, t.income, SUM((MIN(t.income, b.upper_bound) - b.lower_bound) * b.rate_bp / 10000) AS tax_due
FROM d61_taxpayer t JOIN d61_tax_brackets b ON t.income > b.lower_bound
GROUP BY t.tid, t.income;
INSERT OR IGNORE INTO progressive_tax_brackets_d61_meta VALUES ('module', 'progressive_tax_brackets_d61');
