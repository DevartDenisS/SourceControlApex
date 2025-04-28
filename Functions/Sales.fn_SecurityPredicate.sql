SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Create a security policy (basic example using a predicate function)
-- Create a predicate function
CREATE FUNCTION Sales.fn_SecurityPredicate(@CustomerID INT)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN SELECT 1 AS fn_securitypredicate_result
WHERE @CustomerID > 0;
GO
