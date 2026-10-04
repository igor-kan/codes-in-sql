-- MySQL Partitioned Telemetry Architecture 525
CREATE DATABASE IF NOT EXISTS telemetry_db_525;
USE telemetry_db_525;

CREATE TABLE IF NOT EXISTS device_telemetry_525 (
    event_id BIGINT NOT NULL AUTO_INCREMENT,
    device_id INT NOT NULL,
    signal_strength INT NOT NULL,
    created_at DATETIME NOT NULL,
    PRIMARY KEY (event_id, created_at),
    INDEX idx_dev_time_525 (device_id, created_at)
) ENGINE=InnoDB
PARTITION BY RANGE (YEAR(created_at)) (
    PARTITION p_2025 VALUES LESS THAN (2026),
    PARTITION p_2026 VALUES LESS THAN (2027),
    PARTITION p_future VALUES LESS THAN MAXVALUE
);

DELIMITER //
CREATE PROCEDURE QueryDeviceHealth_525(IN target_dev INT)
BEGIN
    SELECT 
        device_id,
        AVG(signal_strength) AS avg_signal,
        COUNT(*) AS total_samples
    FROM device_telemetry_525
    WHERE device_id = target_dev
    GROUP BY device_id;
END //
DELIMITER ;
