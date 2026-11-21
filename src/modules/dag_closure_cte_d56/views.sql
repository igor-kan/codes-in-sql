CREATE VIEW v_d56_depth AS WITH RECURSIVE tree(emp, depth) AS (SELECT emp, 0
FROM d56_org
WHERE mgr IS NULL
UNION ALL SELECT o.emp, t.depth + 1
FROM d56_org o JOIN tree t ON o.mgr = t.emp) SELECT emp, depth
FROM tree;
INSERT OR IGNORE INTO dag_closure_cte_d56_meta VALUES ('module', 'dag_closure_cte_d56');
