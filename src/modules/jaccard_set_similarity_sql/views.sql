CREATE VIEW v_jaccard AS WITH sz AS (SELECT doc_id, COUNT(*) AS cnt
FROM doc_tokens GROUP BY doc_id), inter AS (SELECT a.doc_id AS d1, b.doc_id AS d2, COUNT(*) AS c_int
FROM doc_tokens a JOIN doc_tokens b ON a.tok=b.tok AND a.doc_id < b.doc_id GROUP BY a.doc_id, b.doc_id) SELECT i.d1, i.d2, ROUND(CAST(i.c_int AS REAL) / (s1.cnt + s2.cnt - i.c_int), 6) AS jaccard
FROM inter i JOIN sz s1 ON i.d1=s1.doc_id JOIN sz s2 ON i.d2=s2.doc_id;
INSERT OR IGNORE INTO jaccard_set_similarity_sql_meta VALUES ('module', 'jaccard_set_similarity_sql');
