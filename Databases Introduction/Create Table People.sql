CREATE TABLE People(
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(200) NOT NULL,
Image VARBINARY(MAX) NULL,
Height DECIMAL(10,2) NULL,
Weigth DECIMAL(10,2) NULL,
Gender BIT NOT NULL,
Birthdate DATETIME NOT NULL,
Biography nvarchar(max)
);
INSERT INTO People VALUES
(1, N'User1', 'm'),
(2, N'User2', 'f');

SELECT *,
       CASE Gender
       WHEN 'm' THEN 'Male'
       WHEN 'f' THEN 'Female'
       ELSE
       'Unknown' END
FROM People;