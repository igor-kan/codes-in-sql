CREATE VIEW v_d56_tx_balance AS SELECT tx_id, SUM(delta) AS net_delta, SUM(CASE WHEN delta > 0 THEN delta ELSE 0 END) AS total_credit
FROM d56_ledger GROUP BY tx_id;
INSERT OR IGNORE INTO double_entry_ledger_chk_d56_meta VALUES ('module', 'double_entry_ledger_chk_d56');
