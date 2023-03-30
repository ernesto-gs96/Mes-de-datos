-- Una combinación cruzada es simplemente un producto cartesiano de las dos tablas.
SELECT <select_list>
FROM table1 AS t1
CROSS JOIN table2 AS t2;

-- algunas aplicaciones prácticas para escribir una operación CROSS JOIN explícita:

-- 1.- Crear una tabla de números, con una fila para cada valor posible de un intervalo.
-- 2.- Generar grandes volúmenes de datos para pruebas. Cuando se le aplica una combinación cruzada a sí misma, 
-- una tabla con tan solo 100 filas puede generar fácilmente 10 000 filas de salida.s

SELECT emp.FirstName, prd.Name
FROM HR.Employee AS emp
CROSS JOIN Production.Product AS prd;

-- Al escribir consultas mediante CROSS JOIN, tenga en cuenta las instrucciones siguientes:

-- 1.- No se realiza ninguna coincidencia de filas, por lo que no se usa ninguna cláusula ON. 
-- (Es un error usar una cláusula ON con CROSS JOIN).
-- 2.- Para usar la sintaxis ANSI SQL-92, separe los nombres de tabla de entrada con el operador CROSS JOIN.