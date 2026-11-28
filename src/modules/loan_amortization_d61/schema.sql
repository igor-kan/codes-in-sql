CREATE TABLE d61_loan (loan_id INTEGER PRIMARY KEY, principal_cents INTEGER NOT NULL CHECK(principal_cents > 0), annual_rate_bp INTEGER NOT NULL CHECK(annual_rate_bp >= 0), months INTEGER NOT NULL CHECK(months > 0), payment_cents INTEGER NOT NULL CHECK(payment_cents > 0));
CREATE TABLE IF NOT EXISTS loan_amortization_d61_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
