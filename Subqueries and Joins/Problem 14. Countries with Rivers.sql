SELECT TOP(5)Countries.CountryName,Rivers.RiverName
FROM Countries
LEFT JOIN CountriesRivers ON Countries.CountryCode = CountriesRivers.CountryCode
LEFT JOIN Rivers ON CountriesRivers.RiverId = Rivers.Id
JOIN Continents ON Countries.ContinentCode = Continents.ContinentCode
WHERE Continents.ContinentName = 'Africa'
ORDER BY Countries.CountryName
