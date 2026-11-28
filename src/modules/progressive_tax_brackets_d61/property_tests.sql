CREATE TEMP TABLE _progressive_tax_brackets_d61_prop(flag INTEGER);
CREATE TEMP TRIGGER _progressive_tax_brackets_d61_prop_trg BEFORE INSERT ON _progressive_tax_brackets_d61_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(a.tax_due >= b.tax_due) FROM v_d61_tax_due a, v_d61_tax_due b WHERE a.income > b.income) = 1) THEN RAISE(ABORT, 'property assertion failed for progressive_tax_brackets_d61') END; END;
INSERT INTO _progressive_tax_brackets_d61_prop VALUES (1);
