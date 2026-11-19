CREATE TEMP TABLE _jaccard_set_similarity_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _jaccard_set_similarity_sql_prop_trg BEFORE INSERT ON _jaccard_set_similarity_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_jaccard WHERE jaccard < 0 OR jaccard > 1) = 0) THEN RAISE(ABORT, 'property assertion failed for jaccard_set_similarity_sql') END; END;
INSERT INTO _jaccard_set_similarity_sql_prop VALUES (1);
