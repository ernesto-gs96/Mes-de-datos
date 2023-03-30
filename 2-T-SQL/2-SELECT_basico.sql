-- se recuperan todas las columnas de la tabla (hipotética) Production.Product
SELECT * FROM Production.Product;

-- Se debe evitar usarlo en el trabajo de producción por los siguientes motivos:
-- Los cambios en la tabla que agregan o reorganizan columnas se reflejarán en los resultados de la consulta, lo que puede dar lugar a una salida inesperada para las aplicaciones o informes que usan la consulta.
-- La devolución de datos que no son necesarios puede ralentizar las consultas y provocar problemas de rendimiento si la tabla de origen contiene un gran número de filas.


-- permite tener control sobre exactamente qué columnas se devuelven y en qué orden
SELECT ProductID, Name, ListPrice, StandardCost
FROM Production.Product;