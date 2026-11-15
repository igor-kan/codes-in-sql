CREATE INDEX idx_dag_src ON dag_edges (src, dst);
CREATE INDEX idx_dag_dst ON dag_edges (dst, src);

CREATE VIEW v_cyclic_nodes AS
SELECT DISTINCT cur_node AS node_id FROM v_cycle_witnesses;
