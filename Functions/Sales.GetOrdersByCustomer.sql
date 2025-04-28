SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create inline table-valued function
CREATE FUNCTION Sales.GetOrdersByCustomer (
    @CustomerID INT
)
RETURNS TABLE
AS
RETURN
    SELECT OrderID, OrderDate, Amount
    FROM Sales.Orders
    WHERE CustomerID = @CustomerID;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Returns all orders placed by the specified customer', 'SCHEMA', N'Sales', 'FUNCTION', N'GetOrdersByCustomer', NULL, NULL
GO
