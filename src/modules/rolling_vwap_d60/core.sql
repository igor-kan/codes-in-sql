CREATE TABLE rolling_vwap_d60_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'rolling_vwap_d60'
);
