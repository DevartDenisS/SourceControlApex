CREATE DEFAULT Sales.DefaultOrderDate AS GETDATE();
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sets the current date as default order date', 'SCHEMA', N'Sales', 'DEFAULT', N'DefaultOrderDate', NULL, NULL
GO
