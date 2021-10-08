CREATE DATABASE [Online Store]
USE [Online Store]

CREATE TABLE Orders(
OrderID int PRIMARY KEY,
CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID)
);

CREATE TABLE Customers(
CustomerID int PRIMARY KEY,
Name varchar(50),
Birthday DATE,
CityID int FOREIGN KEY REFERENCES Cities(CityID)
);

CREATE TABLE Cities(
CityID int PRIMARY KEY,
Name varchar(50)
);

CREATE TABLE Items(
Itemid int PRIMARY KEY,
Name varchar(50),
ItemTypeID int FOREIGN KEY REFERENCES ItemTypes(ItemTypeID)
);

CREATE TABLE OrderItems(
OrderID int FOREIGN KEY REFERENCES Orders(Orderid),
ItemID int FOREIGN KEY REFERENCES Items(Itemid)

CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID, ItemID)
);

CREATE TABLE ItemTypes(
ItemTypeID int PRIMARY KEY,
Name varchar(50)
);