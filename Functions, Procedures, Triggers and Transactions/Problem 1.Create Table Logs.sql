CREATE TABLE Logs(
LogId INT PRIMARY KEY,
AccountId INT,
OldSum MONEY, 
NewSum MONEY
)

CREATE TRIGGER tr_LogsUpdate
 ON Accounts
 AFTER UPDATE 
 AS
 BEGIN
	INSERT INTO Logs(AccountID,OldSum,NewSum)
	SELECT inserted.Id , deleted.Balance, inserted.Balance
	FROM  inserted
	INNER JOIN deleted ON inserted.Id = deleted.Id
 END 
