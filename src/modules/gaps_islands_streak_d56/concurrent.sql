BEGIN IMMEDIATE;
INSERT INTO gaps_islands_streak_d56_runs (ok, note) VALUES (1, 'tx_update');
UPDATE gaps_islands_streak_d56_runs
SET ok = 1
WHERE ok = 1;
COMMIT;
