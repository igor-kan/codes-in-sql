-- PostgreSQL CTE & JSONB Step 10084
CREATE SCHEMA IF NOT EXISTS org_v10084;
CREATE TABLE IF NOT EXISTS org_v10084.nodes (node_id INT PRIMARY KEY, parent_id INT, name VARCHAR(64), attrs JSONB DEFAULT '{}'::jsonb);
CREATE OR REPLACE FUNCTION org_v10084.get_path_10084(root_id INT)
RETURNS TABLE(node_id INT, depth INT, path TEXT) AS $$
BEGIN RETURN QUERY
  WITH RECURSIVE t AS (
    SELECT n.node_id,0,n.name::TEXT FROM org_v10084.nodes n WHERE n.node_id=root_id
    UNION ALL
    SELECT c.node_id,p.depth+1,(p.path||'->'||c.name)::TEXT
    FROM org_v10084.nodes c JOIN t p ON c.parent_id=p.node_id WHERE p.depth<10
  ) SELECT * FROM t;
END; $$ LANGUAGE plpgsql;
