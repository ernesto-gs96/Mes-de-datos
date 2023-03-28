-- Un valor NULL significa que no hay ningún valor o es desconocido.

-- La función ISNULL toma dos argumentos. El primero es una expresión que estamos probando. 
-- Si el valor de ese primer argumento es NULL, la función devuelve el segundo argumento. Si la primera expresión no es NULL, se devuelve sin cambios.
SELECT FirstName,
      ISNULL(MiddleName, 'None') AS MiddleIfAny,
      LastName
FROM Sales.Customer;
-- NOTA : El valor sustituido por NULL debe ser el mismo tipo de datos que la expresión que se está evaluando. 


-- La función ISNULL no es estándar de ANSI, por lo que puede que desee usar la función COALESCE 
-- en su lugar. COALESCE es un poco más flexible, ya que puede tomar un número variable de argumentos, 
-- cada uno de los cuales es una expresión. Devolverá la primera expresión de la lista que no sea NULL.

-- Si solo hay dos argumentos, COALESCE se comporta como ISNULL. Sin embargo, con más de dos argumentos, 
-- COALESCE se puede usar como alternativa a una expresión CASE de varias partes mediante ISNULL.

-- Si todos los argumentos son NULL, COALESCE devuelve NULL. Todas las expresiones deben devolver tipos de datos iguales o compatibles.
SELECT COALESCE ( expression1, expression2, [ ,...n ] )


-- En el ejemplo siguiente se usa una tabla ficticia denominada HR.Wages, que incluye tres columnas 
-- que contienen información sobre las ganancias semanales de los empleados: la tarifa por hora, 
-- el salario semanal y una comisión por unidad vendida. No obstante, un empleado recibe solo un tipo
--  de sueldo. Para cada empleado, una de esas tres columnas tendrá un valor y las otras dos serán NULL. 
-- Para determinar el importe total pagado a cada empleado, puede usar COALESCE para devolver solo el valor 
-- distinto de NULL que se encuentra en esas tres columnas.
SELECT EmployeeID,
      COALESCE(HourlyRate * 40,
                WeeklySalary,
                Commission * SalesQty) AS WeeklyEarnings
FROM HR.Wages;



-- La función NULLIF permite devolver NULL en determinadas condiciones. Esta función tiene aplicaciones 
-- útiles en áreas como la limpieza de datos, cuando desea reemplazar los caracteres en blanco o de 
-- marcador de posición por NULL.

-- NULLIF toma dos argumentos y devuelve NULL si son equivalentes. Si no son iguales, NULLIF devuelve 
-- el primer argumento.
SELECT SalesOrderID,
      ProductID,
      UnitPrice,
      NULLIF(UnitPriceDiscount, 0) AS Discount
FROM Sales.SalesOrderDetail;

-- Para buscar la primera columna que no sea NULL, puede utilizar la función COALESCE.
SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated
FROM SalesLT.Product;