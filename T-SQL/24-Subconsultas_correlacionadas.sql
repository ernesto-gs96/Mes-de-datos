-- Al igual que las subconsultas independientes, las subconsultas correlacionadas 
-- son instrucciones SELECT anidadas dentro de una consulta externa. Las subconsultas 
-- correlacionadas también pueden ser subconsultas escalares o multivalor. Normalmente 
-- se usan cuando la consulta interna necesita hacer referencia a un valor en la consulta externa.

-- Algunas consideraciones especiales cuando se usan subconsultas correlacionadas:

-- 1.- Las subconsultas correlacionadas no se pueden ejecutar por separado desde la consulta externa. 
-- Esta restricción complica las pruebas y la depuración.
-- 2.- A diferencia de las subconsultas independientes, que se procesan una vez, las subconsultas 
-- correlacionadas se ejecutarán varias veces. Lógicamente, la consulta externa se ejecuta primero y, 
-- para cada fila devuelta, se procesa la consulta interna.

SELECT SalesOrderID, CustomerID, OrderDate
FROM SalesLT.SalesOrderHeader AS o1
WHERE SalesOrderID =
    (SELECT MAX(SalesOrderID)
     FROM SalesLT.SalesOrderHeader AS o2
     WHERE o2.CustomerID = o1.CustomerID)
ORDER BY CustomerID, OrderDate;

-- En el ejemplo siguiente se usa una subconsulta correlacionada para devolver el pedido más reciente 
-- de cada cliente. La subconsulta hace referencia a la consulta externa y hace referencia a su valor 
-- CustomerID en su cláusula WHERE. Para cada fila de la consulta externa, la subconsulta busca 
-- el identificador de pedido máximo del cliente al que se hace referencia en esa fila y la consulta 
-- externa comprueba si la fila que se está analizando es la fila con ese identificador de pedido.

-- UTILIZACION CON NOT
SELECT CustomerID, CompanyName, EmailAddress 
FROM SalesLT.Customer AS c 
WHERE NOT EXISTS
  (SELECT * 
   FROM SalesLT.SalesOrderHeader AS o
   WHERE o.CustomerID = c.CustomerID);


-- Para escribir consultas que usan EXISTS con subconsultas, tenga en cuenta las siguientes directrices:

-- 1.- La palabra clave EXISTS sigue directamente a WHERE. Ningún nombre de columna 
-- (u otra expresión) la precede, a menos que también se utilice NOT.
-- 2.- En la subconsulta, use SELECT *. La subconsulta no devuelve ninguna fila, 
-- por lo que no es necesario especificar ninguna columna.