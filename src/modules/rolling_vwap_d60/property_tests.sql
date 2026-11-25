CREATE TEMP TABLE _rolling_vwap_d60_prop(flag INTEGER);
CREATE TEMP TRIGGER _rolling_vwap_d60_prop_trg BEFORE INSERT ON _rolling_vwap_d60_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(vwap3 >= pmin AND vwap3 <= pmax) FROM v_d60_vwap3) = 1) THEN RAISE(ABORT, 'property assertion failed for rolling_vwap_d60') END; END;
INSERT INTO _rolling_vwap_d60_prop VALUES (1);
