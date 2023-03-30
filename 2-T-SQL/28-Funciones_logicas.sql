-- permite determinar cuál de varios valores se va a devolver. 

-- IIF evalúa una expresión de entrada booleana y devuelve un valor especificado si la expresión se evalúa 
-- como True, y un valor alternativo si la expresión se evalúa como False.
SELECT AddressType,
      IIF(AddressType = 'Main Office', 'Billing', 'Mailing') AS UseAddressFor
FROM Sales.CustomerAddress;
-- la siguiente consulta, que evalúa el tipo de dirección de un cliente. Si el valor es "Oficina principal", 
-- la expresión devuelve "Facturación". Para todos los demás valores de tipo de dirección, la expresión devuelve "Correo".


-- La función CHOOSE evalúa una expresión de entero y devuelve el valor correspondiente de una lista en función 
-- de su posición ordinal (basada en 1).
SELECT SalesOrderID, Status,
CHOOSE(Status, 'Ordered', 'Shipped', 'Delivered') AS OrderStatus
FROM Sales.SalesOrderHeader;