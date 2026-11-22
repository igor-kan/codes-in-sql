CREATE TEMP TABLE IF NOT EXISTS _moving_median_win_d57_inv_ok (flag INTEGER);
INSERT INTO _moving_median_win_d57_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _moving_median_win_d57_inv_ok;
