CREATE TYPE [Sales].[CustomerTableType]
AS TABLE (
		[CustomerID]     [int] NULL,
		[Name]           [nvarchar](100) COLLATE Cyrillic_General_CI_AS NULL
)
GO
EXEC sp_addextendedproperty N'MS_Description', N'Table type for list of customers', 'SCHEMA', N'Sales', 'TYPE', N'CustomerTableType', NULL, NULL
GO
