-- una cláusula SELECT puede realizar cálculos y manipulaciones, que usan operadores para combinar columnas y valores o varias columnas
SELECT ProductID,
      Name + '(' + ProductNumber + ')',
  ListPrice - StandardCost
FROM Production.Product;
-- El resultado del cálculo o la manipulación debe ser un resultado de un solo valor (escalar) que aparecerá en el resultado como una columna independiente

-- 1.- Las columnas devueltas por las dos expresiones no tienen nombres de columna. En función de la herramienta que use para 
-- enviar la consulta, un nombre de columna que falta podría indicarse mediante un encabezado de columna en blanco, un indicador 
-- literal "sin nombre de columna" o un nombre predeterminado como column1.
-- 2.- La primera expresión usa el operador + para concatenar valores de cadena (basados en caracteres), mientras que la segunda 
-- expresión usa el operador - para restar un valor numérico a otro. Cuando se usa con valores numéricos, el operador + realiza la suma. 
-- Por tanto, está claro que es importante comprender los tipos de datos de las columnas que se incluyen en las expresiones


-- Puede especificar un alias para cada columna que la consulta SELECT devuelve, ya sea como alternativa al nombre de la columna de origen o para asignar un nombre a la salida de una expresión.
SELECT ProductID AS ID,
      Name + '(' + ProductNumber + ')' AS ProductName,
  ListPrice - StandardCost AS Markup
FROM Production.Product;

-- Tener en cuenta las siguientes pautas para que el código de T-SQL sea fácil de leer (y, por tanto, ¡más fácil de entender y depurar!):

-- 1.- Poner en mayúsculas las palabras clave de T-SQL, como SELECT, FROM, AS, etc. La utilización de mayúsculas para las palabras clave 
-- es una convención de uso frecuente que facilita la búsqueda de cada cláusula de una instrucción compleja.
-- 2.- Inicie una nueva línea para cada cláusula principal de una instrucción.
-- 3.- Si la lista SELECT contiene más de unas pocas columnas, expresiones o alias, considere la posibilidad de enumerar cada columna
-- en su propia línea.
-- 4.- Aplicar sangría a las líneas que contienen subcláusulas o columnas para dejar claro qué código pertenece a cada cláusula principal.