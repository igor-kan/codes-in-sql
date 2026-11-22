CREATE TEMP TABLE _rfm_customer_tier_d57_prop(flag INTEGER);
CREATE TEMP TRIGGER _rfm_customer_tier_d57_prop_trg BEFORE INSERT ON _rfm_customer_tier_d57_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(total_spend) FROM v_d57_rfm) = (SELECT SUM(spend) FROM d57_orders)) THEN RAISE(ABORT, 'property assertion failed for rfm_customer_tier_d57') END; END;
INSERT INTO _rfm_customer_tier_d57_prop VALUES (1);
