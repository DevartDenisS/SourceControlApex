SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Create trigger
CREATE TRIGGER Sales.trg_Customers_Insert
ON Sales.Customers
AFTER INSERT
AS
BEGIN
    PRINT 'New customer inserted';
END;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Prints message after customer insert', 'SCHEMA', N'Sales', 'TABLE', N'Customers', 'TRIGGER', N'trg_Customers_Insert'
GO
