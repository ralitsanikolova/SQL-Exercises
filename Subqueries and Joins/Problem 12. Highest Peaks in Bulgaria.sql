SELECT CountryCode, MountainRange, PeakName , Elevation
FROM Mountains
INNER JOIN Peaks ON Mountains.Id = Peaks.MountainId
INNER JOIN MountainsCountries ON Mountains.Id = MountainsCountries.MountainId
WHERE Peaks.Elevation > 2835 AND MountainsCountries.CountryCode = 'BG'
ORDER BY Elevation DESC



