INSERT INTO basket_items VALUES (1,'bread'),(1,'butter'),(2,'bread'),(2,'butter'),(3,'milk'),(4,'bread'),(4,'milk');
CREATE TEMP TABLE _apriori_pair_lift_confidence_chk(flag INTEGER);
CREATE TEMP TRIGGER _apriori_pair_lift_confidence_chk_trg BEFORE INSERT ON _apriori_pair_lift_confidence_chk
BEGIN SELECT CASE WHEN NOT ((SELECT ROUND(lift, 4) FROM v_pair_lift WHERE ia='bread' AND ib='butter') > 1.2) THEN RAISE(ABORT, 'unit assertion failed for apriori_pair_lift_confidence') END; END;
INSERT INTO _apriori_pair_lift_confidence_chk VALUES (1);
