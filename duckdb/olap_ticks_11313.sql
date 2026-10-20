-- DuckDB high-throughput OLAP analytics 11313
CREATE TABLE IF NOT EXISTS olap_ticks_11313 AS
  SELECT i AS tick_id, 'SYM-' || (i % 50)::VARCHAR as symbol,
         random() * 1000.0 as price, now() + INTERVAL (i) SECOND as ts
  FROM generate_series(1, 163) t(i);
SELECT symbol, AVG(price) avg_px, STDDEV_POP(price) vol,
       FIRST_VALUE(price) OVER (PARTITION BY symbol ORDER BY ts) open_px
FROM olap_ticks_11313 GROUP BY symbol, price, ts;
