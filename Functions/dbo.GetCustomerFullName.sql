SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION GetCustomerFullName(@CustomerID INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @FullName NVARCHAR(100);

    SELECT @FullName = FirstName + ' ' + LastName
    FROM Customers
    WHERE CustomerID = @CustomerID;

    RETURN @FullName;
END;
GO
