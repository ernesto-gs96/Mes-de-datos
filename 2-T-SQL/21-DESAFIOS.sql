-- DESAFIO 1.1
SELECT c.CompanyName, oh.SalesOrderID, oh.TotalDue
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS oh    
    ON oh.CustomerID = c.CustomerID;
    
-- DESAFIO 1.2
SELECT c.CompanyName,       
    a.AddressLine1,       
    ISNULL(a.AddressLine2, '') AS AddressLine2,       
    a.City,       
    a.StateProvince,       
    a.PostalCode,       
    a.CountryRegion,       
    oh.SalesOrderID,       
    oh.TotalDueFROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS oh    
    ON oh.CustomerID = c.CustomerID
JOIN SalesLT.CustomerAddress AS ca    
    ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a    
    ON ca.AddressID = a.AddressID
WHERE ca.AddressType = 'Main Office';

-- DESAFIO 2.1
SELECT c.CompanyName, c.FirstName, c.LastName,       
    oh.SalesOrderID, oh.TotalDue
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.SalesOrderHeader AS oh    
    ON c.CustomerID = oh.CustomerID
ORDER BY oh.SalesOrderID DESC;

-- DESAFIO 2.2
SELECT c.CompanyName, c.FirstName, c.LastName, c.Phone
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.CustomerAddress AS ca    
    ON c.CustomerID = ca.CustomerID
WHERE ca.AddressID IS NULL;

--DESAFIO 3.1
SELECT pcat.Name AS ParentCategory, cat.Name AS SubCategory, prd.Name AS ProductName
FROM SalesLT.ProductCategory pcat
JOIN SalesLT.ProductCategory as cat    
    ON pcat.ProductCategoryID = cat.ParentProductCategoryID
JOIN SalesLT.Product as prd    
    ON prd.ProductCategoryID = cat.ProductCategoryID
ORDER BY ParentCategory, SubCategory, ProductName;