-- Microsoft SQL Server T-SQL Stored Procedure & Partitioning 42
CREATE SCHEMA etl_stage_42;
GO

CREATE TABLE etl_stage_42.audit_stream (
    audit_id BIGINT IDENTITY(1,1) PRIMARY KEY CLUSTERED,
    batch_id UNIQUEIDENTIFIER DEFAULT NEWID(),
    source_system NVARCHAR(64) NOT NULL,
    payload_rows INT NOT NULL,
    inserted_at DATETIME2(7) DEFAULT SYSUTCDATETIME()
);
GO

CREATE PROCEDURE etl_stage_42.usp_IngestBatchAudit_42
    @source NVARCHAR(64),
    @rows INT,
    @new_id BIGINT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO etl_stage_42.audit_stream (source_system, payload_rows)
        VALUES (@source, @rows);
        SET @new_id = SCOPE_IDENTITY();
    END TRY
    BEGIN CATCH
        THROW;
    END CATCH
END;
GO
