INSERT INTO ewma_cfg VALUES (0.5); INSERT INTO series_obs VALUES (1, 10.0), (2, 20.0), (3, 20.0);
CREATE TEMP TABLE _exponential_ewma_alpha_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _exponential_ewma_alpha_sql_chk_trg BEFORE INSERT ON _exponential_ewma_alpha_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT ewma FROM v_ewma WHERE t=2) = 15.0 AND (SELECT ewma FROM v_ewma WHERE t=3) = 17.5) THEN RAISE(ABORT, 'unit assertion failed for exponential_ewma_alpha_sql') END; END;
INSERT INTO _exponential_ewma_alpha_sql_chk VALUES (1);
