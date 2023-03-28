-- La cláusula WHERE está compuesta de una o varias condiciones de búsqueda, 
-- cada una de las cuales debe evaluarse como TRUE, FALSE o “unknown” para cada fila de la tabla. 
-- Solo se devolverán las filas cuando la cláusula WHERE se evalúe como TRUE. Las condiciones 
-- individuales actúan como filtros en los datos y se conocen como “predicados”. Cada predicado 
-- incluye una condición que se prueba, por lo general mediante los operadores básicos de comparación:

-- = (es igual a)
-- <> (no es igual a)
-- > (mayor que)
-- >= (mayor o igual que)
-- < (menor que)
-- <= (menor o igual que)

SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID = 2;

SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ListPrice < 10.00;

-- Se puede filtrar fácilmente para permitir o excluir los valores “unknown” o NULL mediante IS NULL o IS NOT NULL.
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductName IS NOT NULL;