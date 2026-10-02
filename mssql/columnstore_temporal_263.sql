-- Microsoft SQL Server Columnstore & Temporal Architecture 263
CREATE SCHEMA telemetry_stage_263;
GO

CREATE TABLE telemetry_stage_263.device_signals (
    signal_id BIGINT IDENTITY(1,1) NOT NULL,
    device_uid UNIQUEIDENTIFIER DEFAULT NEWID(),
    battery_level FLOAT NOT NULL,
    recorded_at DATETIME2(7) DEFAULT SYSUTCDATETIME(),
    INDEX cci_signals CLUSTERED COLUMNSTORE
);
GO

CREATE PROCEDURE telemetry_stage_263.usp_SummarizeTelemetry_263
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        DATETRUNC(hour, recorded_at) AS signal_hour,
        AVG(battery_level) AS avg_battery,
        COUNT(*) AS signal_count
    FROM telemetry_stage_263.device_signals
    GROUP BY DATETRUNC(hour, recorded_at);
END;
GO
