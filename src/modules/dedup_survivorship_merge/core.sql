CREATE TABLE dedup_survivorship_merge_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'dedup_survivorship_merge'
);
