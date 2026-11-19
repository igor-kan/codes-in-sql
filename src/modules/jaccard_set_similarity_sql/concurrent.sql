BEGIN IMMEDIATE;
INSERT INTO jaccard_set_similarity_sql_runs (ok, note) VALUES (1, 'tx_update');
UPDATE jaccard_set_similarity_sql_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
