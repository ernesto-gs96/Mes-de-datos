-- BETWEEN es otro acceso directo que se puede usar al filtrar para un límite superior e inferior 
-- del valor, en lugar de usar dos condiciones con el operador AND. 


-- Las dos consultas siguientes son equivalentes:
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ListPrice >= 1.00
    AND ListPrice <= 10.00;

SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ListPrice BETWEEN 1.00 AND 10.00;


SELECT ProductName, ModifiedDate
FROM Production.Product
WHERE ModifiedDate BETWEEN '2012-01-01' AND '2012-12-31';