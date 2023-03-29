-- DESAFIO 1.1
SELECT SalesOrderID, ROUND(Freight,2) AS FreightCost
FROM SalesLT.SalesOrderHeader;

-- DESAFIO 1.2
SELECT SalesOrderID, 
    ROUND(Freight,2) AS FreightCost, 
    LOWER(ShipMethod) AS ShippingMethod 
FROM SalesLT.SalesOrderHeader;

-- DESAFIO 1.3
SELECT SalesOrderID, 
    ROUND(Freight,2) AS FreightCost, 
    LOWER(ShipMethod) AS ShippingMethod,     
    YEAR(ShipDate) AS ShipYear, 
    DATENAME(mm,ShipDate) AS ShipMonth, 
    DAY(ShipDate) AS ShipDay
FROM SalesLT.SalesOrderHeader;


-- DESAFIO 2.1
SELECT p.Name , 
    SUM(od.LineTotal) AS TotalRevenue
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS od    
ON p.ProductID = od.ProductIDGROUP BY p.Name
ORDER BY TotalRevenue DESC;

-- DESAFIO 2.2
SELECT p.Name , SUM(od.LineTotal) AS LineTotalFROM SalesLT.Product AS pJOIN SalesLT.SalesOrderDetail AS od    ON p.ProductID = od.ProductIDWHERE p.ListPrice > 1000GROUP BY p.ProductID, p.NameORDER BY LineTotal DESC;-- DESAFIO 2.3SELECT p.Name , SUM(od.LineTotal) AS LineTotalFROM SalesLT.Product AS pJOIN SalesLT.SalesOrderDetail AS od    ON p.ProductID = od.ProductIDWHERE p.ListPrice > 1000GROUP BY p.ProductID, p.NameHAVING SUM(od.LineTotal) > 20000ORDER BY LineTotal DESC;