-- Las subconsultas multivalor, como sugiere el nombre, pueden devolver más de una fila. 
-- Sin embargo, todavía devuelven una sola columna.
SELECT CustomerID, SalesOrderID
FROM Sales.SalesOrderHeader
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.Customer
    WHERE CountryRegion = 'Canada');

-- En muchos casos, las subconsultas multivalor se pueden escribir fácilmente mediante combinaciones.
SELECT c.CustomerID, o.SalesOrderID
FROM Sales.Customer AS c
JOIN Sales.SalesOrderHeader AS o
    ON c.CustomerID = o.CustomerID
WHERE c. CountryRegion = 'Canada';


-- ¿Cómo se decide si se escribe una consulta que implica varias tablas como JOIN o con una subconsulta? 
-- A veces, solo depende de con qué se siente más cómodo. La mayoría de las consultas anidadas que 
-- se convierten fácilmente en JOIN realmente se convertirán en JOIN de forma interna. En el caso de 
-- estas consultas, no hay ninguna diferencia real al escribir la consulta de una manera frente a otra.

-- Una restricción que debe tener en cuenta es que cuando se usa una consulta anidada, los resultados 
-- devueltos al cliente solo pueden incluir columnas de la consulta externa. Por lo tanto, si tiene 
-- que devolver columnas de ambas tablas, debe escribir la consulta mediante JOIN.