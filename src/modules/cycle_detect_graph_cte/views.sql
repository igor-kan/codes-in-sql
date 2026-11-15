CREATE VIEW v_edge_list AS
SELECT src, dst, CASE WHEN src = dst THEN 1 ELSE 0 END AS is_self_loop
FROM dag_edges;
