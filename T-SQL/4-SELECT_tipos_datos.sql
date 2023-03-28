-- Informacion sobre los tipos de datos sportados: 
-- https://learn.microsoft.com/es-es/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16

-- Tipos de datos mas utilizados: int, decimal, NUMERIC, money, FLOAT, varchar, text, fecha, time, imagen, etc.

-- Conversion de tipos de datos: 
-- La función CAST convierte un valor en un tipo de datos especificado si dicho valor es compatible con 
-- el tipo de datos de destino. Se devolverá un error si no es compatible.
SELECT CAST(ProductID AS varchar(4)) + ': ' + Name AS ProductName
FROM Production.Product;

-- TRY_CAST : Los valores que se pueden convertir en un tipo de datos numérico se devuelven como 
-- valores decimales y los valores incompatibles se devuelven como NULL, que se usa para indicar que un valor es desconocido.
SELECT TRY_CAST(Size AS integer) As NumericSize
FROM Production.Product;


-- CONVERT de T-SQL
SELECT CONVERT(varchar(4), ProductID) + ': ' + Name AS ProductName
FROM Production.Product;

-- Una ventaja de usar CONVERT sobre CAST es que CONVERT también incluye un parámetro que permite 
-- especificar un estilo de formato al convertir valores numéricos y de fecha en cadenas.
SELECT SellStartDate,
       CONVERT(varchar(20), SellStartDate) AS StartDate,
       CONVERT(varchar(10), SellStartDate, 101) AS FormattedStartDate 
FROM SalesLT.Product;


-- La función PARSE está diseñada para convertir cadenas con formato que representan 
-- valores numéricos o de fecha y hora. Por ejemplo, considere la siguiente consulta (que usa valores literales en lugar de valores de columnas de una tabla)
SELECT PARSE('01/01/2021' AS date) AS DateValue,
   PARSE('$199.99' AS money) AS MoneyValue;


-- La función STR convierte un valor numérico en varchar.
SELECT ProductID,  '$' + STR(ListPrice) AS Price
FROM Production.Product;