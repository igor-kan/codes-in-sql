INSERT INTO d57_sales VALUES ('NA','web',100),('NA','app',50),('EU','web',80);
CREATE TEMP TABLE _pivot_crosstab_sum_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _pivot_crosstab_sum_d57_chk_trg BEFORE INSERT ON _pivot_crosstab_sum_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT web_rev FROM v_d57_pivot WHERE region='NA') = 100 AND (SELECT app_rev FROM v_d57_pivot WHERE region='NA') = 50) THEN RAISE(ABORT, 'unit assertion failed for pivot_crosstab_sum_d57') END; END;
INSERT INTO _pivot_crosstab_sum_d57_chk VALUES (1);
