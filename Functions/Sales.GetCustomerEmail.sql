SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Create scalar function
CREATE FUNCTION Sales.GetCustomerEmail (@CustomerID INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Email NVARCHAR(100);
    SELECT @Email = Email FROM Sales.Customers WHERE CustomerID = @CustomerID;
    RETURN @Email;
END;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Returns the email of a customer by ID', 'SCHEMA', N'Sales', 'FUNCTION', N'GetCustomerEmail', NULL, NULL
GO
