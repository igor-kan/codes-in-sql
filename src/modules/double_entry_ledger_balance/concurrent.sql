BEGIN IMMEDIATE;
INSERT INTO ledger_audit_log (check_name, detail) VALUES ('ledger_seal_gate', 'double_entry_active');
COMMIT;
