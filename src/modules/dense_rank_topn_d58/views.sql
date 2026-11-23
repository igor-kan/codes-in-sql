CREATE VIEW v_d58_top2 AS WITH r AS (SELECT eid, dept, sal, DENSE_RANK() OVER (PARTITION BY dept ORDER BY sal DESC) AS dr
FROM d58_emp) SELECT eid, dept, sal, dr
FROM r
WHERE dr <= 2;
INSERT OR IGNORE INTO dense_rank_topn_d58_meta VALUES ('module', 'dense_rank_topn_d58');
