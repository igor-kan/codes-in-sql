CREATE TEMP TABLE _next_greater_element_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _next_greater_element_d61_prop_trg BEFORE INSERT ON _next_greater_element_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d61_next_greater WHERE next_val IS NOT NULL AND NOT (next_val > val AND next_seq > seq)) = 0) THEN RAISE(ABORT, 'property assertion failed for next_greater_element_d61') END; END;
INSERT INTO _next_greater_element_d61_prop VALUES (1);
