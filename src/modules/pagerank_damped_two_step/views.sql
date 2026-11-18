CREATE VIEW v_pagerank_step1 AS WITH deg AS (SELECT src, COUNT(*) AS out_deg
FROM pr_edges GROUP BY src), n AS (SELECT COUNT(*) AS tot
FROM pr_nodes) SELECT p.nid, (0.15 / n.tot) + 0.85 * COALESCE((SELECT SUM((1.0 / n.tot) / d.out_deg)
FROM pr_edges e JOIN deg d ON e.src=d.src
WHERE e.dst=p.nid), 0.0) AS pr1
FROM pr_nodes p CROSS JOIN n;
INSERT OR IGNORE INTO pagerank_damped_two_step_meta VALUES ('module', 'pagerank_damped_two_step');
