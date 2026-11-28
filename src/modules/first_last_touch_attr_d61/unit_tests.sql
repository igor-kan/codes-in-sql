INSERT INTO d61_touch VALUES (1,1,'search'),(1,2,'email'),(1,3,'direct'),(2,1,'email'),(2,2,'social');
INSERT INTO d61_conv VALUES (1,3),(2,2);
CREATE TEMP TABLE _first_last_touch_attr_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _first_last_touch_attr_d61_chk_trg BEFORE INSERT ON _first_last_touch_attr_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT first_credit FROM v_d61_attribution WHERE channel='search') = 1 AND (SELECT last_credit FROM v_d61_attribution WHERE channel='direct') = 1) THEN RAISE(ABORT, 'unit assertion failed for first_last_touch_attr_d61') END; END;
INSERT INTO _first_last_touch_attr_d61_chk VALUES (1);
