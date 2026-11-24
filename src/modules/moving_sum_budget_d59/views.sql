CREATE VIEW v_d59_burn AS SELECT proj, seq, amt, SUM(amt) OVER (PARTITION BY proj ORDER BY seq) AS cum_amt, cap
FROM d59_exp;
INSERT OR IGNORE INTO moving_sum_budget_d59_meta VALUES ('module', 'moving_sum_budget_d59');
