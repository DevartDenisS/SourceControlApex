CREATE SYNONYM [Sales].[CustomerSynonym] FOR [Sales].[Customers]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Synonym for Sales.Customers table', 'SCHEMA', N'Sales', 'SYNONYM', N'CustomerSynonym', NULL, NULL
GO
