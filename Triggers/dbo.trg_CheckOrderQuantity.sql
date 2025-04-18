SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER trg_CheckOrderQuantity
ON Orders
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT * FROM inserted WHERE Quantity <= 0
    )
    BEGIN
        RAISERROR ('Quantity must be greater than 0.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO
