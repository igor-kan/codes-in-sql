CREATE VIEW v_d57_bal AS SELECT acct, seq, amt, SUM(amt) OVER (PARTITION BY acct ORDER BY seq) AS run_bal
FROM d57_tx;
INSERT OR IGNORE INTO running_sum_partition_d57_meta VALUES ('module', 'running_sum_partition_d57');
