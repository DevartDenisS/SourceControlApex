SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Create procedure
CREATE PROCEDURE Sales.GetCustomerByID
    @CustomerID INT
AS
BEGIN
    SELECT * FROM Sales.Customers WHERE CustomerID = @CustomerID;
END;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Retrieves customer by ID', 'SCHEMA', N'Sales', 'PROCEDURE', N'GetCustomerByID', NULL, NULL
GO
