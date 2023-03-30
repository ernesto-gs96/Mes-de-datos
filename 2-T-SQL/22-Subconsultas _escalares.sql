-- Una subconsulta escalar es una instrucción SELECT interna dentro de una consulta externa, 
-- escrita para devolver un solo valor.
SELECT MAX(SalesOrderID)
FROM Sales.SalesOrderHeader
-- Esta consulta devuelve un valor único que indica el valor más alto de OrderID en la tabla SalesOrderHeader.


SELECT SalesOrderID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID = 
   (SELECT MAX(SalesOrderID)
    FROM Sales.SalesOrderHeader);

-- Para escribir una subconsulta escalar, tenga en cuenta las siguientes directrices:
-- 1.- Para indicar una consulta como subconsulta, escríbala entre paréntesis.
-- 2.- Se admiten varios niveles de subconsultas en Transact-SQL. En este módulo, solo se considerarán 
-- las consultas de dos niveles (una consulta interna dentro de una consulta externa), pero se admiten 
-- hasta 32 niveles.
-- 3.- Si la subconsulta no devuelve filas (un conjunto vacío), el resultado de la subconsulta es NULL. 
-- Si es posible en su escenario que no se devuelva ninguna fila, debe asegurarse de que la consulta 
-- externa puede controlar correctamente un valor NULL, además de otros resultados esperados.
-- 4.- Por lo general, la consulta interna debe devolver una sola columna. La selección de varias columnas 
-- en una subconsulta casi siempre es un error. La única excepción es si la subconsulta se indica con 
-- la palabra clave EXISTS.


-- Una subconsulta escalar se puede usar en cualquier lugar de una consulta donde se espera un valor, 
-- incluida la lista SELECT. Por ejemplo, podríamos ampliar la consulta que recuperó los detalles del 
-- pedido más reciente para incluir la cantidad media de elementos que se pide, de modo que podamos 
-- comparar la cantidad pedida en el pedido más reciente con la media de todos los pedidos.
SELECT SalesOrderID, ProductID, OrderQty,
    (SELECT AVG(OrderQty)
     FROM SalesLT.SalesOrderDetail) AS AvgQty
FROM SalesLT.SalesOrderDetail
WHERE SalesOrderID = 
    (SELECT MAX(SalesOrderID)
     FROM SalesLT.SalesOrderHeader);




