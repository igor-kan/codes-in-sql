-- PostgreSQL Hierarchical CTE & JSONB Operations Step 344
CREATE SCHEMA IF NOT EXISTS org_hierarchy_v344;

CREATE TABLE IF NOT EXISTS org_hierarchy_v344.nodes (
    node_id INT PRIMARY KEY,
    parent_id INT,
    node_name VARCHAR(64) NOT NULL,
    attributes JSONB DEFAULT '{}'::jsonb
);

CREATE OR REPLACE FUNCTION org_hierarchy_v344.get_subtree_path_344(root_id INT)
RETURNS TABLE (
    node_id INT,
    depth INT,
    node_path TEXT
) AS $$
BEGIN
    RETURN QUERY
    WITH RECURSIVE node_tree AS (
        SELECT n.node_id, 0 AS depth, n.node_name::TEXT AS node_path
        FROM org_hierarchy_v344.nodes n
        WHERE n.node_id = root_id
        UNION ALL
        SELECT child.node_id, parent.depth + 1, (parent.node_path || ' -> ' || child.node_name)::TEXT
        FROM org_hierarchy_v344.nodes child
        JOIN node_tree parent ON child.parent_id = parent.node_id
        WHERE parent.depth < 10
    )
    SELECT * FROM node_tree;
END;
$$ LANGUAGE plpgsql;
