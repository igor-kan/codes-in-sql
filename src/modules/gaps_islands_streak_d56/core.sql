CREATE TABLE gaps_islands_streak_d56_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'gaps_islands_streak_d56'
);
