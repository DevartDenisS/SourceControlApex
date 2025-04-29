SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [Sales].[OrdersNew] (
		[OrderID]        [int] NOT NULL,
		[CustomerID]     [int] NOT NULL,
		[OrderDate]      [date] NOT NULL,
		[Amount]         [money] NOT NULL,
		CONSTRAINT [PK__Orders__C3905BAF5B11FF16]
		PRIMARY KEY
		CLUSTERED
		([OrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrdersNew]
	WITH CHECK
	ADD CONSTRAINT [FK_Orders_Customers]
	FOREIGN KEY ([CustomerID]) REFERENCES [Sales].[Customers] ([CustomerID])
ALTER TABLE [Sales].[OrdersNew]
	CHECK CONSTRAINT [FK_Orders_Customers]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Orders placed by customers', 'SCHEMA', N'Sales', 'TABLE', N'OrdersNew', NULL, NULL
GO
ALTER TABLE [Sales].[OrdersNew] SET (LOCK_ESCALATION = TABLE)
GO
