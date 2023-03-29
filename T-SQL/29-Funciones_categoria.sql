-- Las funciones de clasificación permiten realizar cálculos en un conjunto de filas 
-- definido por el usuario. Estas funciones incluyen funciones de clasificación, 
-- desplazamiento, agregado y distribución.

-- En este ejemplo se usa la función RANK para calcular una clasificación 
-- basada en ListPrice, con el precio más alto clasificado en 1
SELECT TOP 100 ProductID, Name, ListPrice,
RANK() OVER(ORDER BY ListPrice DESC) AS RankByPrice
FROM Production.Product AS p
ORDER BY RankByPrice;

-- Puede usar la cláusula OVER para definir particiones o agrupaciones dentro 
-- de los datos. Por ejemplo, la consulta siguiente amplía el ejemplo anterior 
-- para calcular las clasificaciones basadas en precios de los productos dentro de cada categoría.
SELECT c.Name AS Category, p.Name AS Product, ListPrice,
  RANK() OVER(PARTITION BY c.Name ORDER BY ListPrice DESC) AS RankByPrice
FROM Production.Product AS p
JOIN Production.ProductCategory AS c
ON p.ProductCategoryID = c.ProductcategoryID
ORDER BY Category, RankByPrice;