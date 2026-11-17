CREATE VIEW v_knapsack_opt AS WITH RECURSIVE dp(step, w, v) AS (SELECT 0, 0, 0
UNION SELECT i.idx, d.w, d.v
FROM dp d JOIN items i ON i.idx = d.step + 1
UNION SELECT i.idx, d.w + i.wt, d.v + i.val
FROM dp d JOIN items i ON i.idx = d.step + 1 JOIN knap_cfg c ON d.w + i.wt <= c.cap) SELECT MAX(v) AS best_val
FROM dp;
INSERT OR IGNORE INTO knapsack_dp_tabular_sql_meta VALUES ('module', 'knapsack_dp_tabular_sql');
