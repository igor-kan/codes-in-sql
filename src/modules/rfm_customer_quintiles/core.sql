CREATE TABLE rfm_customer_quintiles_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'rfm_customer_quintiles'
);
