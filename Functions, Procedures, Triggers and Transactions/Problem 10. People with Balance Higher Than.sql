CREATE PROC usp_GetHoldersWithBalanceHigherThan (@moneyInAccount MONEY)
AS
	SELECT AccountHolders.FirstName , AccountHolders.LastName
	FROM AccountHolders
	INNER JOIN Accounts ON AccountHolders.Id = Accounts.Id
	GROUP BY AccountHolders.FirstName, AccountHolders.LastName
	HAVING @moneyInAccount > SUM(Accounts.Balance)
GO