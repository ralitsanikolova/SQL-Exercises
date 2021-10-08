SELECT Username, IpAddress AS [IP_Address]
FROM Users
WHERE IpAddress LIKE '___.1_%._%.___'
ORDER BY Username;