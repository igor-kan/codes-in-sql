INSERT INTO d61_tax_brackets VALUES (1,0,10000,1000),(2,10000,20000,2000),(3,20000,1000000,3000);
INSERT INTO d61_taxpayer VALUES (1,5000),(2,15000),(3,25000);
CREATE TEMP TABLE _progressive_tax_brackets_d61_chk(flag INTEGER);
CREATE TEMP TRIGGER _progressive_tax_brackets_d61_chk_trg BEFORE INSERT ON _progressive_tax_brackets_d61_chk
BEGIN SELECT CASE WHEN NOT ((SELECT tax_due FROM v_d61_tax_due WHERE tid=2) = 2000 AND (SELECT tax_due FROM v_d61_tax_due WHERE tid=3) = 4500) THEN RAISE(ABORT, 'unit assertion failed for progressive_tax_brackets_d61') END; END;
INSERT INTO _progressive_tax_brackets_d61_chk VALUES (1);
