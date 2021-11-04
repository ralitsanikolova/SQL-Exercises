CREATE PROC usp_CalculateFutureValueForAccount(@AccountId INT , @InterestRate FLOAT)
AS
BEGIN
	SELECT AccountHolders.Id AS [Account Id], AccountHolders.FirstName AS [First Name], AccountHolders.LastName AS [Last Name],
	Accounts.Balance AS [Current Balance] , dbo.ufn_CalculateFutureValue(Accounts.Balance, @interestRate, 5)
	FROM Accounts 
	JOIN AccountHolders ON Accounts.Id = AccountHolders.Id
	WHERE Accounts.Id = @AccountId
END

