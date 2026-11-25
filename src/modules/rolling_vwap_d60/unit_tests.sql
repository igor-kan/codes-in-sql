INSERT INTO d60_ticks VALUES ('ACME',1,100,10),('ACME',2,110,30),('ACME',3,120,10);
CREATE TEMP TABLE _rolling_vwap_d60_chk(flag INTEGER);
CREATE TEMP TRIGGER _rolling_vwap_d60_chk_trg BEFORE INSERT ON _rolling_vwap_d60_chk
BEGIN SELECT CASE WHEN NOT ((SELECT ROUND(vwap3, 2) FROM v_d60_vwap3 WHERE sym='ACME' AND seq=3) = 110.0) THEN RAISE(ABORT, 'unit assertion failed for rolling_vwap_d60') END; END;
INSERT INTO _rolling_vwap_d60_chk VALUES (1);
