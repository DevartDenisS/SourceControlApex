-- Create a rule that requires order amount to be > 0
CREATE RULE Sales.PositiveAmountRule AS 
    @Amount > 0;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Ensures that order amount is greater than zero.', 'SCHEMA', N'Sales', 'RULE', N'PositiveAmountRule', NULL, NULL
GO
