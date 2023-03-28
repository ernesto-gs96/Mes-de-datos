-- Todas las condiciones deben ser TRUE al conectar varias condiciones con el operador AND.
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID = 2
    AND ListPrice < 10.00;

-- Cuando se usa el operador OR para conectar dos condiciones, una o ambas pueden ser TRUE para el conjunto de resultados.
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE (ProductCategoryID = 2 OR ProductCategoryID = 3)
    AND (ListPrice < 10.00);

-- El operador IN es un acceso directo para varias condiciones de igualdad para la misma columna conectada con OR. 
-- No hay ningún problema con el uso de varias condiciones OR en una consulta
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID = 2
    OR ProductCategoryID = 3
    OR ProductCategoryID = 4;

SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID IN (2, 3, 4);