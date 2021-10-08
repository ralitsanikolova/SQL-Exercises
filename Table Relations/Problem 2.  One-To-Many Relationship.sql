CREATE TABLE Models(
ModelID int  PRIMARY KEY IDENTITY(100, 1),
Name varchar(255) NOT NULL,
ManufacturerID int FOREIGN KEY REFERENCES Manufacturers(ManufacturerID),
);

CREATE TABLE Manufacturers(
ManufacturerID int PRIMARY KEY IDENTITY(1,1) , 
Name varchar(255) NOT NULL,
EstablishedOn DATE NOT NULL
);

INSERT INTO Models(Name, ManufacturerID)
VALUES('X1',1), 
	('i6',1), 
	('Molel S',2),
	('Model X' ,2),
	('Model 3' ,2),
	('Nova' ,3);


INSERT INTO Manufacturers(Name, EstablishedOn)
VALUES( 'BMW', '1916/03/01'),
	('Tesla', '2003/01/01'),
	('Lada', '1966/05/01');

