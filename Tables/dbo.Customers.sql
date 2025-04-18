SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers] (
		[CustomerID]     [int] NOT NULL,
		[FirstName]      [nvarchar](50) COLLATE Cyrillic_General_CI_AS NULL,
		[LastName]       [nvarchar](50) COLLATE Cyrillic_General_CI_AS NULL,
		CONSTRAINT [PK__Customer__A4AE64B8879786B2]
		PRIMARY KEY
		CLUSTERED
		([CustomerID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] SET (LOCK_ESCALATION = TABLE)
GO
