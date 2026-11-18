CREATE TEMP TABLE _rfm_customer_quintiles_prop(flag INTEGER);
CREATE TEMP TRIGGER _rfm_customer_quintiles_prop_trg BEFORE INSERT ON _rfm_customer_quintiles_prop
BEGIN SELECT CASE WHEN NOT ((SELECT r_score + f_score + m_score FROM v_rfm_scores WHERE cid='C1') = 3) THEN RAISE(ABORT, 'property assertion failed for rfm_customer_quintiles') END; END;
INSERT INTO _rfm_customer_quintiles_prop VALUES (1);
