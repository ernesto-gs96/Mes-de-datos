-- DESAFIO 1.1
SELECT DISTINCT City, StateProvince 
FROM SalesLT.Address
ORDER BY City;

--DESAFIO 1.2
SELECT TOP (10) PERCENT TIES Name
FROM SalesLT.Product
ORDER BY Weight DESC;

-- DESAFIO 2.1
SELECT Name, Color, [Size]
FROM SalesLT.Product
WHERE ProductModelID=1;

-- DESAFIO 2.2
SELECT ProductNumber ,Name, Color, [Size]
FROM SalesLT.Product
WHERE Color IN ('Black','Red','White')
    AND [Size] IN ('S','M');
    
-- DESAFIO 2.3
SELECT ProductNumber ,Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK-%';

-- DESAFIO 2.4
SELECT ProductNumber ,Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK-[^R]%a-[0-9][0-9]';
-- [^R] Diferente de R