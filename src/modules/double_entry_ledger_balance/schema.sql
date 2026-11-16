CREATE TABLE gl_accounts (
    acct_id INTEGER PRIMARY KEY,
    acct_code TEXT UNIQUE NOT NULL,
    acct_type TEXT NOT NULL CHECK (acct_type IN ('ASSET', 'LIABILITY', 'EQUITY', 'REVENUE', 'EXPENSE'))
);

CREATE TABLE gl_journals (
    journal_id INTEGER PRIMARY KEY,
    posted INTEGER NOT NULL DEFAULT 0 CHECK (posted IN (0, 1)),
    memo TEXT NOT NULL
);

CREATE TABLE gl_lines (
    line_id INTEGER PRIMARY KEY,
    journal_id INTEGER NOT NULL REFERENCES gl_journals(journal_id),
    acct_id INTEGER NOT NULL REFERENCES gl_accounts(acct_id),
    amount_cents INTEGER NOT NULL CHECK (amount_cents != 0)
);
