-- OFFSET-FETCH permite devolver solo un intervalo de las filas seleccionadas por la consulta

-- Sintaxis de OFFSET-FETCH
-- OFFSET { integer_constant | offset_row_count_expression } { ROW | ROWS }
-- [FETCH { FIRST | NEXT } {integer_constant | fetch_row_count_expression } { ROW | ROWS } ONLY]


-- se devolverán las 10 primeras filas y, luego, se devolverán las 10 filas siguientes de datos de 
-- producto en función de ListPrice
SELECT ProductID, ProductName, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC 
OFFSET 0 ROWS --Skip zero rows
FETCH NEXT 10 ROWS ONLY; --Get the next 10

-- Para recuperar la página siguiente de datos del producto, use la cláusula OFFSET para especificar 
-- el número de filas que se van a omitir
SELECT ProductID, ProductName, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC 
OFFSET 10 ROWS --Skip 10 rows
FETCH NEXT 10 ROWS ONLY; --Get the next 10





