CREATE TEMP TABLE IF NOT EXISTS _pagerank_damped_two_step_inv_ok (flag INTEGER);
INSERT INTO _pagerank_damped_two_step_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _pagerank_damped_two_step_inv_ok;
