-- LEFT OUTER JOIN, que indica al procesador de consultas que conserve todas las filas de la tabla HR.Employee
-- y muestre los valores Amount para las filas coincidentes en Sales.SalesOrder. Pero se devuelven todos los empleados, 
-- independientemente de si han realizado o no un pedido de ventas. En lugar del valor Amount, la consulta devolverá NULL 
-- para los empleados sin pedidos de ventas correspondientes.
SELECT emp.FirstName, ord.Amount
FROM HR.Employee AS emp
LEFT OUTER JOIN Sales.SalesOrder AS ord
    ON emp.EmployeeID = ord.EmployeeID;

-- Las combinaciones externas se expresan mediante las palabras clave LEFT, RIGHT o FULL, que se colocan por delante 
-- de OUTER JOIN. El propósito de la palabra clave es indicar qué tabla (en qué lado de la palabra clave JOIN) 
-- se debe conservar y mostrar todas sus filas, haya coincidencias o no.

-- Al escribir consultas mediante OUTER JOIN, tenga en cuenta las instrucciones siguientes:

-- 1.- Como ha visto, se prefieren alias de tabla, no solo para la lista SELECT, sino también para la cláusula ON.
-- 2.- Como sucede con INNER JOIN, se puede realizar una operación OUTER JOIN en una sola columna coincidente o en 
-- varios atributos coincidentes.
-- 3.- A diferencia de INNER JOIN, el orden en el que las tablas se enumeran y se unen en la cláusula FROM sí 
-- importa con OUTER JOIN, ya que determinará si elige LEFT o RIGHT para la combinación.
-- 4.- Las combinaciones de varias tablas son más complejas cuando se usa OUTER JOIN. La presencia de valores NULL 
-- en los resultados de OUTER JOIN puede provocar problemas si los resultados intermedios se combinan a una tercera tabla. 
-- El predicado de la segunda combinación puede filtrar las filas con valores NULL.
-- 5.- Para mostrar solo las filas en las que no existe ninguna coincidencia, agregue una prueba de NULL en 
-- una cláusula WHERE después de un predicado OUTER JOIN.
-- 6.- FULL OUTER JOIN rara vez se usa. Devuelve todas las filas coincidentes entre las dos tablas, más todas 
-- las filas de la primera tabla sin coincidencia en la segunda, además de todas las filas de la segunda 
-- sin coincidencia en la primera.
-- 7.- No hay ninguna manera de predecir el orden en que se devolverán las filas sin una cláusula ORDER BY. 
-- No hay ninguna manera de saber si primero se devolverán las filas coincidentes o las no coincidentes.