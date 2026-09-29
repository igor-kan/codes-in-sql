-- Microsoft SQL Server T-SQL Stored Procedure & Partitioning 13
CREATE SCHEMA etl_stage_13;
GO

CREATE TABLE etl_stage_13.audit_stream (
    audit_id BIGINT IDENTITY(1,1) PRIMARY KEY CLUSTERED,
    batch_id UNIQUEIDENTIFIER DEFAULT NEWID(),
    source_system NVARCHAR(64) NOT NULL,
    payload_rows INT NOT NULL,
    inserted_at DATETIME2(7) DEFAULT SYSUTCDATETIME()
);
GO

CREATE PROCEDURE etl_stage_13.usp_IngestBatchAudit_13
    @source NVARCHAR(64),
    @rows INT,
    @new_id BIGINT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO etl_stage_13.audit_stream (source_system, payload_rows)
        VALUES (@source, @rows);
        SET @new_id = SCOPE_IDENTITY();
    END TRY
    BEGIN CATCH
        THROW;
    END CATCH
END;
GO
