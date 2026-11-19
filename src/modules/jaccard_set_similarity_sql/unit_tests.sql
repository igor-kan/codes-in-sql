INSERT INTO doc_tokens VALUES ('D1','a'),('D1','b'),('D1','c'),('D2','a'),('D2','b'),('D2','d');
CREATE TEMP TABLE _jaccard_set_similarity_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _jaccard_set_similarity_sql_chk_trg BEFORE INSERT ON _jaccard_set_similarity_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT jaccard FROM v_jaccard WHERE d1='D1' AND d2='D2') = 0.5) THEN RAISE(ABORT, 'unit assertion failed for jaccard_set_similarity_sql') END; END;
INSERT INTO _jaccard_set_similarity_sql_chk VALUES (1);
