CREATE VIEW v_d61_next_greater AS SELECT s.seq, s.val, (SELECT MIN(t.seq)
FROM d61_series t
WHERE t.seq > s.seq AND t.val > s.val) AS next_seq, (SELECT t.val
FROM d61_series t
WHERE t.seq > s.seq AND t.val > s.val ORDER BY t.seq ASC LIMIT 1) AS next_val
FROM d61_series s;
INSERT OR IGNORE INTO next_greater_element_d61_meta VALUES ('module', 'next_greater_element_d61');
