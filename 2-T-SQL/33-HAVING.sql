-- Cuando haya creado grupos con una cláusula GROUP BY, puede filtrar aún más los resultados. 
-- La cláusula HAVING actúa como filtro en los grupos. Esto es similar a la forma en que 
-- la cláusula WHERE actúa como filtro en las filas devueltas por la cláusula FROM.

-- En el ejemplo siguiente se cuentan los pedidos de cada cliente y se filtran 
-- los resultados para incluir solo los clientes que han realizado más de 10 pedidos:
SELECT CustomerID,
      COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING COUNT(*) > 10;

-- Comparación de HAVING con WHERE
-- Mientras que las cláusulas HAVING y WHERE filtran los datos, recuerde que WHERE funciona 
-- en las filas devueltas por la cláusula FROM. Si la sección GROUP BY ... HAVING existe 
-- en la consulta después de una cláusula WHERE, la cláusula WHERE filtrará las filas antes 
-- de que se procese GROUP BY, lo que podría limitar los grupos que se pueden crear.

-- Una cláusula HAVING se procesa después de GROUP BY y solo funciona en grupos, no en 
-- filas de detalles. En resumen:
-- 1.- Una cláusula WHERE filtra las filas antes de formar grupos
-- 2.- Una cláusula HAVING filtra grupos completos y normalmente examina los resultados de una agregación. 