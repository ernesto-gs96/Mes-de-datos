-- Cuando se procesa la instrucción SELECT, una vez que se han evaluado 
-- la cláusula FROM y la cláusula WHERE, se crea una tabla virtual. El contenido de la tabla 
-- virtual ahora está disponible para su posterior procesamiento. Puede usar la cláusula 
-- GROUP BY para subdividir el contenido de esta tabla virtual en grupos de filas.

-- Para agrupar filas, especifique uno o varios elementos en la cláusula GROUP BY
GROUP BY <value1< [, <value2>, …]
-- GROUP BY crea grupos y coloca filas en cada grupo según lo determinado por 
-- los elementos especificados en la cláusula.


-- La consulta siguiente dará como resultado un conjunto de filas agrupadas, una fila por 
-- CustomerID en la tabla Sales.SalesOrderHeader. Otra manera de ver el proceso GROUP BY es 
-- que todas las filas con el mismo valor para CustomerID se agruparán y se devolverán 
-- sen una sola fila de resultado.
SELECT CustomerID
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;

-- La consulta anterior es equivalente a la consulta siguiente: 
SELECT DISTINCT CustomerID
FROM Sales.SalesOrderHeader

-- Con GROUP BY, podemos agregar otros elementos a la lista SELECT que, a continuación, se agregan para cada grupo.
-- La función de agregado más sencilla es COUNT(*). La consulta siguiente toma las 830 filas de origen 
-- originales de CustomerID y las agrupa en 89 grupos, en función de los valores CustomerID. Cada valor 
-- CustomerID distinto genera una fila de salida en la consulta GROUP BY.
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;

-- Ordenar nuestra salida :
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY CustomerID;

-- *************************************************************************
-- Las cláusulas de una instrucción SELECT se aplican en el orden siguiente:
-- 1.- FROM
-- 2.- WHERE
-- 3.- GROUP BY
-- 4.- HAVING
-- 5.- SELECT
-- 6.- ORDER BY
-- *************************************************************************

-- Los alias de columna se asignan en la cláusula SELECT, que se produce después de 
-- la cláusula GROUP BY, pero antes de la cláusula ORDER BY. Puede hacer referencia 
-- a un alias de columna en la cláusula ORDER BY, pero no en la cláusula GROUP BY

-- ERROR
SELECT CustomerID AS Customer,
       COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY Customer
ORDER BY Customer;

-- CORRECTO
SELECT CustomerID AS Customer,
       COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY Customer;


-- Al seleccionar una fila con un ORDER BY se puede poner una que tenga relación pero no se conoce
-- la relación entre filas al agrupar por lo cual hay que especificar en el GROUP BY

-- ERROR
SELECT CustomerID, PurchaseOrderNumber, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;

-- CORRECTO 
SELECT CustomerID, PurchaseOrderNumber, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID, PurchaseOrderNumber;
















