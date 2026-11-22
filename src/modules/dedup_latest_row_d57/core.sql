CREATE TABLE dedup_latest_row_d57_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'dedup_latest_row_d57'
);
