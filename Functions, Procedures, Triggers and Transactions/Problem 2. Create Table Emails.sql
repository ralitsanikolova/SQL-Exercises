CREATE TABLE NotificationEmails(
Id INT PRIMARY KEY ,
Recipient INT ,
[Subject] VARCHAR(255),
Body VARCHAR(MAX)
);

CREATE TRIGGER tr_CreateTableEmails 
ON Logs 
AFTER INSERT  
AS
BEGIN 
	INSERT INTO NotificationEmails(Recipient, Subject, Body)
	SELECT inserted.AccountId ,CONCAT('Balance change for account: ',inserted.AccountId),
	CONCAT('On ',GETDATE(),' your balance was changed from ',inserted.NewSum,' to ',inserted.OldSum)
	FROM inserted
END