-- estándar ANSI SQL-89
--  las combinaciones se especifican mediante la inclusión de varias tablas en la cláusula FROM en una lista separada por comas
SELECT p.ProductID, m.Name AS Model, p.Name AS Product
FROM SalesLT.Product AS p, SalesLT.ProductModel AS m
WHERE p.ProductModelID = m.ProductModelID;


-- ANSI SQL-92
-- Las combinaciones se representan en la cláusula FROM mediante el operador JOIN adecuado. 
-- La relación lógica entre las tablas, que se convierte en un predicado de filtro, se especifica en la cláusula ON.
SELECT p.ProductID, m.Name AS Model, p.Name AS Product
FROM SalesLT.Product AS p
JOIN SalesLT.ProductModel AS m
    ON p.ProductModelID = m.ProductModelID;