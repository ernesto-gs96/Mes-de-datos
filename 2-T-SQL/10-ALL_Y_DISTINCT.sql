-- Eliminación de duplicados

-- Nos repite la ciudad porque puede existir mas de un provedor en la misma ciudad
SELECT City, CountryRegion
FROM Production.Supplier
ORDER BY CountryRegion, City;

-- ALL - Permite obtener solo una ciudad sin necesidad de repetir
SELECT ALL City, CountryRegion
FROM Production.Supplier
ORDER BY CountryRegion, City;

-- DISTINCT - Similitu de ALL pero exclusiva de DISTINCT
SELECT DISTINCT City, CountryRegion
FROM Production.Supplier
ORDER BY CountryRegion, City;