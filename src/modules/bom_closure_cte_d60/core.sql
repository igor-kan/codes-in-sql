CREATE TABLE bom_closure_cte_d60_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'bom_closure_cte_d60'
);
