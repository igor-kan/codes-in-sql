CREATE TEMP TABLE _pivot_crosstab_sum_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _pivot_crosstab_sum_d57_prop_trg BEFORE INSERT ON _pivot_crosstab_sum_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(web_rev + app_rev) FROM v_d57_pivot) = 230) THEN RAISE(ABORT, 'property assertion failed for pivot_crosstab_sum_d57') END; END;
INSERT INTO _pivot_crosstab_sum_d57_prop VALUES (1);
