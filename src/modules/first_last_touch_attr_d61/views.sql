CREATE VIEW v_d61_attribution AS WITH ft AS (SELECT c.uid, c.conv_seq, (SELECT t.channel
FROM d61_touch t
WHERE t.uid = c.uid AND t.seq <= c.conv_seq ORDER BY t.seq ASC LIMIT 1) AS first_ch, (SELECT t.channel
FROM d61_touch t
WHERE t.uid = c.uid AND t.seq <= c.conv_seq ORDER BY t.seq DESC LIMIT 1) AS last_ch
FROM d61_conv c) SELECT channel, SUM(first_cred) AS first_credit, SUM(last_cred) AS last_credit
FROM (SELECT first_ch AS channel, 1 AS first_cred, 0 AS last_cred
FROM ft
UNION ALL SELECT last_ch AS channel, 0 AS first_cred, 1 AS last_cred
FROM ft)
GROUP BY channel;
INSERT OR IGNORE INTO first_last_touch_attr_d61_meta VALUES ('module', 'first_last_touch_attr_d61');
