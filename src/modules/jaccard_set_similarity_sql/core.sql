CREATE TABLE jaccard_set_similarity_sql_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'jaccard_set_similarity_sql'
);
