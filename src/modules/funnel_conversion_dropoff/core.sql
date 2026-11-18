CREATE TABLE funnel_conversion_dropoff_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'funnel_conversion_dropoff'
);
