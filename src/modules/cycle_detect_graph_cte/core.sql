CREATE VIEW v_cycle_witnesses AS
WITH RECURSIVE walk(start_node, cur_node, depth, path, is_cycle) AS (
    SELECT src, dst, 1, ',' || src || ',' || dst || ',', CASE WHEN src = dst THEN 1 ELSE 0 END
    FROM dag_edges
    UNION ALL
    SELECT
        w.start_node,
        e.dst,
        w.depth + 1,
        w.path || e.dst || ',',
        CASE WHEN instr(w.path, ',' || e.dst || ',') > 0 THEN 1 ELSE 0 END
    FROM walk w
    JOIN dag_edges e ON w.cur_node = e.src
    WHERE w.is_cycle = 0 AND w.depth < 32
)
SELECT start_node, cur_node, depth, path
FROM walk
WHERE is_cycle = 1;
