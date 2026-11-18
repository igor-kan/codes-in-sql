INSERT INTO wealth_obs VALUES (1, 0), (2, 0), (3, 0), (4, 100);
CREATE TEMP TABLE _gini_lorenz_inequality_sql_chk(flag INTEGER);
CREATE TEMP TRIGGER _gini_lorenz_inequality_sql_chk_trg BEFORE INSERT ON _gini_lorenz_inequality_sql_chk
BEGIN SELECT CASE WHEN NOT ((SELECT gini FROM v_gini_coeff) = 0.75) THEN RAISE(ABORT, 'unit assertion failed for gini_lorenz_inequality_sql') END; END;
INSERT INTO _gini_lorenz_inequality_sql_chk VALUES (1);
