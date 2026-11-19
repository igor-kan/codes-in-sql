CREATE TEMP TABLE _exponential_ewma_alpha_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _exponential_ewma_alpha_sql_prop_trg BEFORE INSERT ON _exponential_ewma_alpha_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_ewma) = 3) THEN RAISE(ABORT, 'property assertion failed for exponential_ewma_alpha_sql') END; END;
INSERT INTO _exponential_ewma_alpha_sql_prop VALUES (1);
