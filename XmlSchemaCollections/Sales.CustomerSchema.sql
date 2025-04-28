CREATE XML SCHEMA COLLECTION [Sales].[CustomerSchema] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"><xsd:element name="customer" type="xsd:string" /></xsd:schema>'
GO
EXEC sp_addextendedproperty N'MS_Description', N'XML Schema for customer XML data', 'SCHEMA', N'Sales', 'XML SCHEMA COLLECTION', N'CustomerSchema', NULL, NULL
GO
