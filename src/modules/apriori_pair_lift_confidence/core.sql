CREATE TABLE apriori_pair_lift_confidence_runs (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ok INTEGER NOT NULL CHECK(ok = 1),
    note TEXT NOT NULL DEFAULT 'apriori_pair_lift_confidence'
);
