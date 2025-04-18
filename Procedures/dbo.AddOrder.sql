SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE AddOrder
    @CustomerID INT,
    @ProductID INT,
    @Quantity INT,
    @OrderDate DATE
AS
BEGIN
    INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate)
    VALUES (
        (SELECT ISNULL(MAX(OrderID), 0) + 1 FROM Orders),
        @CustomerID,
        @ProductID,
        @Quantity,
        @OrderDate
    );
END;
GO
