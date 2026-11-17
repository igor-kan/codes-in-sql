CREATE VIEW v_closure AS WITH RECURSIVE reach(src, dst, hops, path) AS (SELECT src, dst, 1, '|' || src || '|' || dst || '|'
FROM graph_edges
UNION ALL SELECT r.src, e.dst, r.hops+1, r.path || e.dst || '|'
FROM reach r JOIN graph_edges e ON r.dst=e.src
WHERE r.hops < 10 AND instr(r.path, '|' || e.dst || '|')=0) SELECT src, dst, MIN(hops) AS min_hops
FROM reach GROUP BY src, dst;
INSERT OR IGNORE INTO adjacency_transitive_reach_meta VALUES ('module', 'adjacency_transitive_reach');
