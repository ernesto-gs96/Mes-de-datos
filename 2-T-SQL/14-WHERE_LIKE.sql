-- El operador de comparación final solo se puede usar para los datos de caracteres 
-- y nos permite usar caracteres comodín y patrones de expresiones regulares. 
-- Los caracteres comodín nos permiten especificar cadenas parciales.


-- la consulta siguiente para devolver todos los productos con nombres que contengan la palabra "mountain"
SELECT Name, ListPrice
FROM SalesLT.Product
WHERE Name LIKE '%mountain%';
-- El carácter comodín % representa cualquier cadena de 0 caracteres o más

SELECT ProductName, ListPrice
FROM SalesLT.Product
WHERE ProductName LIKE 'Mountain Bike Socks, _';
-- Puede usar el carácter comodín _ (guión bajo) para representar un carácter único


-- También puede definir patrones complejos para las cadenas que desea buscar. 
-- Por ejemplo, la siguiente consulta busca productos con un nombre que comience por “Mountain-”, 
-- seguido de:

-- tres caracteres entre 0 y 9
-- un espacio
-- cualquier cadena
-- una coma
-- un espacio
-- dos caracteres entre 0 y 9
SELECT ProductName, ListPrice
FROM SalesLT.Product
WHERE ProductName LIKE 'Mountain-[0-9][0-9][0-9] %, [0-9][0-9]';