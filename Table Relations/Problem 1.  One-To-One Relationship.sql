

CREATE TABLE Persons(
PersonID int PRIMARY KEY IDENTITY(1,1),
FirstName varchar(255),
Salary decimal(10,2),
PassportID  int FOREIGN KEY REFERENCES Passports(PassportID), 
);

CREATE TABLE Passports(
PassportID int PRIMARY KEY IDENTITY(100,1),
PassportNumber varchar(8)
);

INSERT INTO Passports(PassportNumber)
VALUES('N34FG21B'),
('K65LO4R7'),
('ZE657QP2');

INSERT INTO Persons(FirstName,Salary )
VALUES( 'Roberto', 43300.00 ),
( 'Tom',56100.00),
('Yana',60200.00);


