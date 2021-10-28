SELECT
 AllRanks.ContinentCode,
 AllRanks.CurrencyCode,
 AllRanks.CurrencyUsage
FROM
	(SELECT
	Countries.ContinentCode,
	Countries.CurrencyCode,
	Count(Countries.CurrencyCode) AS CurrencyUsage,	
	DENSE_RANK() OVER (PARTITION BY Countries.CurrencyCode ORDER BY Count(Countries.CurrencyCode)) AS CurrencyCodeRanks
	FROM Countries
	GROUP BY 
	Countries.ContinentCode,
	Countries.CurrencyCode) AS AllRanks
	WHERE   AllRanks.CurrencyCodeRanks = 1 and AllRanks.CurrencyUsage > 1
	