SELECT<select_list>
FROM <table_source>
ORDER BY <order_by_list> [ASC|DESC];

-- ORDER BY puede tomar varios tipos de elementos en su lista:
-- 1.- Columnas por nombre. Puede especificar los nombres de las columnas en función de las cuales 
-- se deben ordenar los resultados. Los resultados se devuelven según el orden de la primera columna y, 
-- luego, se ordenan por cada columna adicional.
-- 2.- Alias de columna. Como ORDER BY se procesa después de la cláusula SELECT, tiene acceso a los 
-- alias definidos en la lista SELECT.
-- 3.- Columnas por posición ordinal en la lista SELECT. No se recomienda usar la posición en las aplicaciones, 
-- debido a la disminución de la legibilidad y al cuidado adicional que se necesita para mantener actualizada 
-- la lista ORDER BY. Sin embargo, para las expresiones complejas de la lista SELECT, el uso del número de 
-- la posición puede ser útil durante la solución de problemas.
-- 4.- Las columnas no se incluyen en la lista SELECT, pero están disponibles en las tablas enumeradas de 
-- la cláusula FROM. Si la consulta usa una opción DISTINCT, las columnas de la lista ORDER BY deben incluirse en 
-- la lista SELECT.

-- Dirección de la ordenación
-- Puede usar ASC para una ordenación ascendente (A-Z, 0-9) o DESC para una descendente (Z-A, 9-0)
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
ORDER BY Category ASC, Price DESC;