CREATE TYPE [Sales].[PhoneNumber]
	FROM [nvarchar](20)
	NOT NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Custom type for phone numbers', 'SCHEMA', N'Sales', 'TYPE', N'PhoneNumber', NULL, NULL
GO
