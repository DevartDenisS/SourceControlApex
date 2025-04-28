SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


-- NewObjects

-- Create database-level DDL trigger that just warns
CREATE TRIGGER trg_DDL_Warning
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS
BEGIN
    RAISERROR('Warning: A DDL operation was performed in the database.', 10, 1) WITH NOWAIT;
END;
GO
