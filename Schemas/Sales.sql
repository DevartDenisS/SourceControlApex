CREATE SCHEMA [Sales]
	AUTHORIZATION [dbo]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales schema for customers and orders', 'SCHEMA', N'Sales', NULL, NULL, NULL, NULL
GO
