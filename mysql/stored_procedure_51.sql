-- MySQL Batch Processing & Indexing Strategy 51
CREATE DATABASE IF NOT EXISTS warehouse_db_51;
USE warehouse_db_51;

CREATE TABLE IF NOT EXISTS transaction_ledger_51 (
    txn_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    amount DECIMAL(18, 4) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_account_time_51 (account_id, created_at)
) ENGINE=InnoDB;

DELIMITER //
CREATE PROCEDURE ProcessLedgerSummary_51(IN target_acc INT)
BEGIN
    SELECT 
        account_id,
        COUNT(*) AS total_txns,
        SUM(amount) AS net_balance,
        AVG(amount) AS avg_txn
    FROM transaction_ledger_51
    WHERE account_id = target_acc
    GROUP BY account_id;
END //
DELIMITER ;
