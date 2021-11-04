CREATE PROCEDURE usp_DepositMoney (@AccountId INT, @MoneyAmount MONEY)
AS
BEGIN TRANSACTION 
	UPDATE Accounts
	SET Balance = @MoneyAmount + Balance
	WHERE Id = @AccountId
COMMIT