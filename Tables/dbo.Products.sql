SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products] (
		[ProductID]       [int] NOT NULL,
		[ProductName]     [nvarchar](100) COLLATE Cyrillic_General_CI_AS NULL,
		[Price]           [decimal](10, 2) NULL,
		CONSTRAINT [PK__Products__B40CC6ED0EA95175]
		PRIMARY KEY
		CLUSTERED
		([ProductID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] SET (LOCK_ESCALATION = TABLE)
GO
