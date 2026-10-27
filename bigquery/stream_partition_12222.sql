-- BigQuery partitioned streaming ingestion model 12222
CREATE OR REPLACE TABLE `dataset.bq_stream_12222` (
  trans_id STRING, customer_id INT64, amount NUMERIC,
  trans_time TIMESTAMP
)
PARTITION BY DATE(trans_time) CLUSTER BY customer_id
OPTIONS(partition_expiration_days=90);
SELECT customer_id, SUM(amount) total_amt,
       PERCENT_RANK() OVER (ORDER BY SUM(amount)) as spend_percentile
FROM `dataset.bq_stream_12222` GROUP BY customer_id;
