-- DESAFIO 1.1
SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
    WHERE ListPrice >    
    (SELECT AVG(UnitPrice)     
    FROM SalesLT.SalesOrderDetail)
ORDER BY ProductID;

-- DESAFIO 1.2
SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductID IN    
    (SELECT ProductID     
    FROM SalesLT.SalesOrderDetail     
    WHERE UnitPrice < 100.00)
AND ListPrice >= 100.00
ORDER BY ProductID;

-- DESAFIO 2.1
SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice,    
    (SELECT AVG(o.UnitPrice)     
    FROM SalesLT.SalesOrderDetail AS o     
    WHERE p.ProductID = o.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS p
ORDER BY p.ProductID;

-- DESAFIO 2.2
SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice,    
    (SELECT AVG(o.UnitPrice)    
    FROM SalesLT.SalesOrderDetail AS o    
    WHERE p.ProductID = o.ProductID) AS AvgSellingPrice
    FROM SalesLT.Product AS p
WHERE StandardCost >    
    (SELECT AVG(od.UnitPrice)     
    FROM SalesLT.SalesOrderDetail AS od     
    WHERE p.ProductID = od.ProductID)
ORDER BY p.ProductID;