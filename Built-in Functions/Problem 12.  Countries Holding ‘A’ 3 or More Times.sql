SELECT CountryName, IsoCode AS ISO_Code
FROM Countries
WHERE CountryName LIKE '%A%A%A%'
ORDER BY IsoCode;

USE Geography;