SELECT CountryName, CountryCode, Currencies=
CASE CountryCode
 WHEN 'EUR' THEN 'Euro'
 ELSE 'Not Euro'
 END
FROM Countries