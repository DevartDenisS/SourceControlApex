CREATE SERVICE [SB_Service]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[SB_Queue]
	([SB_Contract])
GO
