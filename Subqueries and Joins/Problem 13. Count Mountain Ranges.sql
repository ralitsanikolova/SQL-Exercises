SELECT Countries.CountryCode, COUNT(MountainsCountries.MountainId) AS [MountainRanges]
FROM Countries
JOIN MountainsCountries ON Countries.CountryCode = MountainsCountries.CountryCode
WHERE Countries.CountryName IN ('Bulgaria', 'United States', 'Russia')
GROUP BY Countries.CountryCode