INSERT INTO cust_orders VALUES ('C1',10,20),('C2',50,100),('C2',55,150),('C3',90,500),('C3',95,600),('C3',99,700);
CREATE TEMP TABLE _rfm_customer_quintiles_chk(flag INTEGER);
CREATE TEMP TRIGGER _rfm_customer_quintiles_chk_trg BEFORE INSERT ON _rfm_customer_quintiles_chk
BEGIN SELECT CASE WHEN NOT ((SELECT r_score + f_score + m_score FROM v_rfm_scores WHERE cid='C3') = 9) THEN RAISE(ABORT, 'unit assertion failed for rfm_customer_quintiles') END; END;
INSERT INTO _rfm_customer_quintiles_chk VALUES (1);
