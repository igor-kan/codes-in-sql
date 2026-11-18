CREATE TABLE pareto_abc_inventory_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'pareto_abc_inventory_sql'
);
