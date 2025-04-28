SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Sales].[Customers] (
		[CustomerID]     [int] NOT NULL,
		[Name]           [nvarchar](100) COLLATE Cyrillic_General_CI_AS NOT NULL,
		[Email]          [nvarchar](100) COLLATE Cyrillic_General_CI_AS NOT NULL,
		[Phone]          [nvarchar](20) COLLATE Cyrillic_General_CI_AS NULL,
		CONSTRAINT [PK__Customer__A4AE64B838794742]
		PRIMARY KEY
		CLUSTERED
		([CustomerID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Customers]
	ADD
	CONSTRAINT [CHK_Email]
	CHECK
	([Email] like '%@%')
GO
ALTER TABLE [Sales].[Customers]
CHECK CONSTRAINT [CHK_Email]
GO
CREATE NONCLUSTERED INDEX [IX_Customers_Email]
	ON [Sales].[Customers] ([Email])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Index for quick search by Email', 'SCHEMA', N'Sales', 'TABLE', N'Customers', 'INDEX', N'IX_Customers_Email'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Customer information', 'SCHEMA', N'Sales', 'TABLE', N'Customers', NULL, NULL
GO
ALTER TABLE [Sales].[Customers] SET (LOCK_ESCALATION = TABLE)
GO
