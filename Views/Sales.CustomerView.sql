SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Create view
CREATE VIEW Sales.CustomerView AS
SELECT CustomerID, Name, Email FROM Sales.Customers;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Simple view for listing customers', 'SCHEMA', N'Sales', 'VIEW', N'CustomerView', NULL, NULL
GO
