-- una expresión CASE en la cláusula SELECT para comprobar los valores NULL
--  La expresión CASE tiene dos variantes: un CASE simple que evalúa una 
-- columna o valor específico, o un CASE buscado que evalúa una o más expresiones.
SELECT Name,    
    CASE        
        WHEN SellEndDate IS NULL THEN 'Currently for sale'        
        ELSE 'No longer available'    
    END AS SalesStatus
FROM SalesLT.Product;
-- La consulta anterior usaba una expresión CASE buscada, que comienza con una 
-- palabra clave CASE e incluye una o más WHEN... THEN expresiones con los valores y 
-- predicados que se van a comprobar. Una expresión ELSE proporciona un valor para usar 
-- si no coincide ninguna de las condiciones WHEN y la palabra clave END denota el final 
-- de la expresión CASE, que se alias a un nombre de columna para el resultado mediante 
-- una expresión AS.

-- CASE MULTIPLE
SELECT Name,    
    CASE Size        
        WHEN 'S' THEN 'Small'        
        WHEN 'M' THEN 'Medium'        
        WHEN 'L' THEN 'Large'        
        WHEN 'XL' THEN 'Extra-Large'        
        ELSE ISNULL(Size, 'n/a')    
    END AS ProductSize
FROM SalesLT.Product;