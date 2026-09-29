-- MySQL Batch Processing & Indexing Strategy 25
CREATE DATABASE IF NOT EXISTS warehouse_db_25;
USE warehouse_db_25;

CREATE TABLE IF NOT EXISTS transaction_ledger_25 (
    txn_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    amount DECIMAL(18, 4) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_account_time_25 (account_id, created_at)
) ENGINE=InnoDB;

DELIMITER //
CREATE PROCEDURE ProcessLedgerSummary_25(IN target_acc INT)
BEGIN
    SELECT 
        account_id,
        COUNT(*) AS total_txns,
        SUM(amount) AS net_balance,
        AVG(amount) AS avg_txn
    FROM transaction_ledger_25
    WHERE account_id = target_acc
    GROUP BY account_id;
END //
DELIMITER ;
