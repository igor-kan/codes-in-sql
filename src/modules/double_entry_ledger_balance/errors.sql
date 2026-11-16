CREATE TABLE IF NOT EXISTS ledger_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    check_name TEXT NOT NULL,
    detail TEXT NOT NULL,
    recorded_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS _sql_assertions (
    assertion_name TEXT PRIMARY KEY,
    passed INTEGER NOT NULL CHECK (passed = 1)
);

CREATE TRIGGER trg_prevent_unbalanced_seal
BEFORE UPDATE ON gl_journals
WHEN NEW.posted = 1 AND OLD.posted = 0 AND
     (SELECT COALESCE(SUM(amount_cents), -1) FROM gl_lines WHERE journal_id = NEW.journal_id) != 0
BEGIN
    SELECT RAISE(ABORT, 'journal lines do not sum to zero');
END;

CREATE TRIGGER trg_immutable_posted_lines
BEFORE INSERT ON gl_lines
WHEN (SELECT posted FROM gl_journals WHERE journal_id = NEW.journal_id) = 1
BEGIN
    SELECT RAISE(ABORT, 'cannot append line to sealed posted journal');
END;
