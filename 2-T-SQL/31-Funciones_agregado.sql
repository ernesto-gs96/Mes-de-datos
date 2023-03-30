-- T-SQL proporciona funciones de agregado como SUM, MAX y AVG para realizar cálculos que toman 
-- varios valores y devuelven un único resultado.

-- Al trabajar con funciones de agregado, debe tener en cuenta los siguientes puntos:

-- 1.- Las funciones de agregado devuelven un único valor (escalar) y se pueden usar en 
-- instrucciones SELECT casi en cualquier lugar en el que se pueda usar un solo valor. 
-- Por ejemplo, estas funciones se pueden usar en las cláusulas SELECT, HAVING y ORDER BY. 
-- Sin embargo, no se pueden usar en la cláusula WHERE.
-- 2.- Las funciones de agregado omiten los valores NULL, excepto cuando se usa COUNT(*).
-- 3.- Las funciones de agregado de una lista SELECT no tienen un encabezado de columna, 
-- a menos que proporcione un alias mediante AS.
-- 4.- Las funciones de agregado de una lista SELECT funcionan en todas las filas que se 
-- pasan a la operación SELECT. Si no hay ninguna cláusula GROUP BY, se resumirán todas 
-- las filas que cumplan cualquier filtro de la cláusula WHERE. Obtendrá más información 
-- sobre GROUP BY en la unidad siguiente.
-- 5.- A menos que use GROUP BY, no debe combinar funciones de agregado con columnas no 
-- incluidas en las funciones de la misma lista SELECT.

SELECT AVG(ListPrice) AS AveragePrice,
       MIN(ListPrice) AS MinimumPrice,
       MAX(ListPrice) AS MaximumPrice
FROM Production.Product;
-- AVG - MEDIA
-- MIN - NÚMERO MENOR, APLICA PARA HORA, CADENA
-- MAX - NÚMERO MAYOR, APLICA PARA HORA, CADENA

-- Especificamos categoría
SELECT AVG(ListPrice) AS AveragePrice,
       MIN(ListPrice) AS MinimumPrice,
       MAX(ListPrice) AS MaximumPrice
FROM Production.Product
WHERE ProductCategoryID = 15;

-- ERROR - Todo el SELECT debe ser una función agregada
SELECT ProductCategoryID, AVG(ListPrice) AS AveragePrice,
MIN(ListPrice) AS MinimumPrice,
MAX(ListPrice) AS MaximumPrice
FROM Production.Product;

-- DISTINCT con funciones de agregado
-- Debe tener en cuenta el uso de DISTINCT en una cláusula SELECT para quitar filas duplicadas. 
-- Cuando se usa con una función de agregado, DISTINCT quita los valores duplicados de la 
-- columna de entrada antes de calcular el valor de resumen. DISTINCT es útil al resumir 
-- las apariciones únicas de valores, como los clientes en la tabla de pedidos.
SELECT COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM Sales.SalesOrderHeader;

--  funciones de agregado con NULL
-- Es importante tener en cuenta la posible presencia de valores NULL en los datos y cómo NULL 
-- interactúa con los componentes de consulta T-SQL, incluida la función de agregado. Hay algunas 
-- consideraciones que se deben tener en cuenta:

-- 1.- A excepción de COUNT que se usa con la opción (*), las funciones de agregado de T-SQL omiten 
-- los valores NULL. Por ejemplo, una función SUM solo agregará valores que no son NULL. Los valores 
-- NULL no se evalúan como cero. COUNT(*) cuenta todas las filas, independientemente del valor o no 
-- valor de cualquier columna.
-- 2.- La presencia de valores NULL en una columna puede dar lugar a cálculos inexactos de AVG, que 
-- sumarán solo las filas rellenadas y dividirán esa suma por el número de filas que no son NULL. 
-- Puede haber una diferencia en los resultados entre AVG(<columna>) y (SUM(<columna>)/COUNT(*)).
SELECT SUM(c2) AS sum_nonnulls, 
    COUNT(*) AS count_all_rows, 
    COUNT(c2) AS count_nonnulls, 
    AVG(c2) AS average, 
    (SUM(c2)/COUNT(*)) AS arith_average
FROM t1;