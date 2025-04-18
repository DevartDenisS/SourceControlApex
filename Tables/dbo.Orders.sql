SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Orders] (
		[OrderID]        [int] NOT NULL,
		[CustomerID]     [int] NULL,
		[ProductID]      [int] NULL,
		[Quantity]       [int] NULL,
		[OrderDate]      [date] NULL,
		CONSTRAINT [PK__Orders__C3905BAFB5CAADF9]
		PRIMARY KEY
		CLUSTERED
		([OrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]
	WITH CHECK
	ADD CONSTRAINT [FK__Orders__Customer__4E88ABD4]
	FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
ALTER TABLE [dbo].[Orders]
	CHECK CONSTRAINT [FK__Orders__Customer__4E88ABD4]

GO
ALTER TABLE [dbo].[Orders]
	WITH CHECK
	ADD CONSTRAINT [FK__Orders__ProductI__4F7CD00D]
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
ALTER TABLE [dbo].[Orders]
	CHECK CONSTRAINT [FK__Orders__ProductI__4F7CD00D]

GO
ALTER TABLE [dbo].[Orders] SET (LOCK_ESCALATION = TABLE)
GO
