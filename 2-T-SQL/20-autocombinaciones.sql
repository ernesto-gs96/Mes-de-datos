-- una aplicación de recursos humanos, una tabla Employee podría incluir información sobre 
-- el jefe de cada empleado y almacenar el identificador del jefe en la propia fila del empleado. 
-- Cada jefe también aparece como empleado.
SELECT emp.FirstName AS Employee, 
       mgr.FirstName AS Manager
FROM HR.Employee AS emp
LEFT OUTER JOIN HR.Employee AS mgr
  ON emp.ManagerID = mgr.EmployeeID;

-- Los resultados de esta consulta incluyen una fila para cada empleado con el nombre de su jefe. 
-- El director general de la empresa no tiene ningún jefe. Para incluir al director general en 
-- los resultados, se usa una combinación externa y el nombre del jefe se devuelve como NULL para 
-- las filas en las que el campo ManagerID no tiene ningún campo EmployeeID coincidente.


-- Para realizar tareas como esta, debe tener en cuenta las instrucciones siguientes:

-- 1.- Defina dos instancias de la misma tabla en la cláusula FROM y combínelas según sea necesario, 
-- mediante combinaciones internas o externas.
-- 2.- Use alias de tabla para diferenciar las dos instancias de la misma tabla.
-- 3.- Use la cláusula ON para proporcionar un filtro que compare las columnas de una instancia de 
-- la tabla con las columnas de la otra instancia.
