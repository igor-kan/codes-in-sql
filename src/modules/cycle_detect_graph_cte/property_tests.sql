DELETE FROM dag_edges;
WITH RECURSIVE tree(k) AS (
    SELECT 1 UNION ALL SELECT k + 1 FROM tree WHERE k < 12
)
INSERT INTO dag_edges (src, dst)
SELECT k, k + 1 FROM tree;

INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'linear_tree_zero_cycles',
       CASE WHEN (SELECT COUNT(*) FROM v_cycle_witnesses) = 0 THEN 1 ELSE 0 END;
