-- La cláusula TOP le permitirá especificar cuántas filas se van a devolver, 
-- ya sea como un entero positivo o como un porcentaje de todas las filas calificadas.
SELECT TOP (N) <column_list>
FROM <table_source>
WHERE <search_condition>
ORDER BY <order list> [ASC|DESC];

--  recuperar solo los 10 productos más costosos
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- WITH TIES - recuperará las filas con valores que puedan encontrarse en las primeras N filas seleccionadas.
SELECT TOP 10 WITH TIES Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- PERCENT - devolver un porcentaje de las filas aptas, use la opción PERCENT con TOP en lugar de un número fijo
SELECT TOP 10 PERCENT Name, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC;

-- NOTA: TOP es propiedad de T-SQL.