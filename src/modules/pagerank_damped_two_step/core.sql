CREATE TABLE pagerank_damped_two_step_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'pagerank_damped_two_step'
);
