-- SELECT devuelve la columna OrderDate y el recuento de valores OrderID, a los que se asigna el nombre (o alias) Orders
SELECT OrderDate, COUNT(OrderID) AS Orders
-- La cláusula FROM identifica qué tabla es el origen de las filas de la consulta; en este caso, es la tabla Sales.SalesOrder
FROM Sales.SalesOrder
-- La cláusula WHERE filtra las filas de los resultados, manteniendo solo las filas que cumplen la condición especificada; 
-- en este caso, los pedidos que tienen el estado "enviado"
WHERE Status = 'Shipped'
-- La cláusula GROUP BY toma las filas que cumplen la condición del filtro y las agrupa por OrderDate, de modo que todas las filas 
-- con el mismo valor OrderDate se consideren como un único grupo y se devuelva una fila para cada grupo
GROUP BY OrderDate
-- Una vez formados los grupos, la cláusula HAVING filtra los grupos en función de su propio predicado. Solo las fechas con 
-- más de un pedido se incluirán en los resultados
HAVING COUNT(OrderID) > 1
-- Para obtener una vista previa de esta consulta, la cláusula final es ORDER BY, que ordena la salida en orden descendente de OrderDate
ORDER BY OrderDate DESC;

-- orden en que SQL Server las evalúa realmente:

-- 1.- La cláusula FROM se evalúa primero para proporcionar las filas de origen para el resto de la instrucción. Se crea una tabla virtual y se pasa al paso siguiente.
-- 2.- La cláusula WHERE es la siguiente en evaluarse, filtrando las filas de la tabla de origen que coinciden con un predicado. La tabla virtual filtrada se pasa al paso siguiente.
-- 3.- GROUP BY es la siguiente, que organiza las filas de la tabla virtual según los valores únicos que se encuentran en la lista GROUP BY. Se crea una nueva tabla virtual que contiene la lista de grupos y se pasa al paso siguiente. A partir de este punto del flujo de operaciones, otros elementos solo pueden hacer referencia a las columnas de la lista GROUP BY o a las funciones de agregado.
-- 4.- Después se avalúa la cláusula HAVING, que filtra grupos completos en función de su predicado. La tabla virtual creada en el paso 3 se filtra y se pasa al paso siguiente.
-- 5.- Por último, se ejecuta la cláusula SELECT, que determina qué columnas aparecerán en los resultados de la consulta. Dado que la cláusula SELECT se evalúa después de los otros pasos, los alias de columna (en nuestro ejemplo, Orders)creados allí no se pueden usar en las cláusulas GROUP BY o HAVING.
-- 6.- La cláusula ORDER BY es la última en ejecutarse, que ordena las filas según lo determinado por su lista de columnas.
-- FROM Sales.SalesOrder
-- WHERE Status = 'Shipped'
-- GROUP BY OrderDate 
-- HAVING COUNT(OrderID) > 1
-- SELECT OrderDate, COUNT(OrderID) AS Orders
-- ORDER BY OrderDate DESC;
