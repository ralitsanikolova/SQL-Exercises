SELECT COUNT(Countries.CountryCode) AS [Country Code]
FROM Countries
LEFT JOIN MountainsCountries ON Countries.CountryCode = MountainsCountries.CountryCode
WHERE MountainsCountries.MountainId IS NULL