CREATE TABLE percentile_hist_bin_d59_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'percentile_hist_bin_d59'
);
