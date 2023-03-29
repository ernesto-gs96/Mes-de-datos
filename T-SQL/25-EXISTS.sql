-- El predicado EXISTS determina si existen filas que cumplan una condición especificada, 
-- pero en lugar de devolverlas, devuelve TRUE o FALSE

SELECT CustomerID, CompanyName, EmailAddress 
FROM Sales.Customer AS c 
WHERE
(SELECT COUNT(*) 
  FROM Sales.SalesOrderHeader AS o
  WHERE o.CustomerID = c.CustomerID) > 0;

SELECT CustomerID, CompanyName, EmailAddress 
FROM Sales.Customer AS c 
WHERE EXISTS
(SELECT * 
  FROM Sales.SalesOrderHeader AS o
  WHERE o.CustomerID = c.CustomerID);

-- En el primer ejemplo, la subconsulta debe contar todas las repeticiones de cada custid 
-- que se encuentre en la tabla Sales.SalesOrderHeader y comparar los resultados del recuento 
-- con cero, simplemente para indicar que el cliente ha realizado pedidos.

-- En la segunda consulta, EXISTS devolverá TRUE para un custid en cuanto se haya encontrado 
-- un pedido pertinente en la tabla Sales.SalesOrderHeader. No es necesario realizar una 
-- contabilidad de cuentas completa de cada repetición.