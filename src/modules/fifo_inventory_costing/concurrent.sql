BEGIN IMMEDIATE;
INSERT INTO fifo_audit_log (check_name, detail) VALUES ('fifo_ledger_check', 'verified FIFO window intervals');
COMMIT;
