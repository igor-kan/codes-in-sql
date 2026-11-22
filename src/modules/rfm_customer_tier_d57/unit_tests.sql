INSERT INTO d57_orders VALUES (1,10,5,120),(2,10,20,80),(3,20,12,50);
CREATE TEMP TABLE _rfm_customer_tier_d57_chk(flag INTEGER);
CREATE TEMP TRIGGER _rfm_customer_tier_d57_chk_trg BEFORE INSERT ON _rfm_customer_tier_d57_chk
BEGIN SELECT CASE WHEN NOT ((SELECT freq FROM v_d57_rfm WHERE cid=10) = 2 AND (SELECT total_spend FROM v_d57_rfm WHERE cid=10) = 200) THEN RAISE(ABORT, 'unit assertion failed for rfm_customer_tier_d57') END; END;
INSERT INTO _rfm_customer_tier_d57_chk VALUES (1);
