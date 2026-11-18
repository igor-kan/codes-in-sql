CREATE TEMP TABLE _gini_lorenz_inequality_sql_prop(flag INTEGER);
CREATE TEMP TRIGGER _gini_lorenz_inequality_sql_prop_trg BEFORE INSERT ON _gini_lorenz_inequality_sql_prop
BEGIN SELECT CASE WHEN NOT ((SELECT gini >= 0.0 AND gini <= 1.0 FROM v_gini_coeff) = 1) THEN RAISE(ABORT, 'property assertion failed for gini_lorenz_inequality_sql') END; END;
INSERT INTO _gini_lorenz_inequality_sql_prop VALUES (1);
