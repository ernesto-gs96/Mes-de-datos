-- Las funciones de conjunto de filas devuelven una tabla virtual que se puede 
-- usar en la cláusula FROM como origen de datos. Estas funciones toman parámetros 
-- específicos de la propia función de conjunto de filas. Incluyen OPENDATASOURCE, 
-- OPENQUERY, OPENROWSET, OPENXML y OPENJSON.

-- Las funciones OPENDATASOURCE, OPENQUERY y OPENROWSET permiten pasar una consulta 
-- a un servidor de bases de datos remoto. A continuación, el servidor remoto devolverá 
-- un conjunto de filas de resultados

-- a consulta siguiente usa OPENROWSET para obtener los resultados de una consulta 
-- de una instancia de SQL Server llamada SalesDB.
SELECT a.*
FROM OPENROWSET('SQLNCLI', 'Server=SalesDB;Trusted_Connection=yes;',
    'SELECT Name, ListPrice
    FROM AdventureWorks.Production.Product') AS a;