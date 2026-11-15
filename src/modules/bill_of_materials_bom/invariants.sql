INSERT INTO _sql_assertions (assertion_name, passed)
SELECT
    'leaves_have_no_children',
    CASE WHEN COUNT(*) = 0 THEN 1 ELSE 0 END
FROM v_bom_orphan_parents;
