-- PostgreSQL CTE & JSONB Step 3144
CREATE SCHEMA IF NOT EXISTS org_v3144;
CREATE TABLE IF NOT EXISTS org_v3144.nodes (node_id INT PRIMARY KEY, parent_id INT, name VARCHAR(64), attrs JSONB DEFAULT '{}'::jsonb);
CREATE OR REPLACE FUNCTION org_v3144.get_path_3144(root_id INT)
RETURNS TABLE(node_id INT, depth INT, path TEXT) AS $$
BEGIN RETURN QUERY
  WITH RECURSIVE t AS (
    SELECT n.node_id,0,n.name::TEXT FROM org_v3144.nodes n WHERE n.node_id=root_id
    UNION ALL
    SELECT c.node_id,p.depth+1,(p.path||'->'||c.name)::TEXT
    FROM org_v3144.nodes c JOIN t p ON c.parent_id=p.node_id WHERE p.depth<10
  ) SELECT * FROM t;
END; $$ LANGUAGE plpgsql;
