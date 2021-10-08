CREATE DATABASE [University Database]
USE [University Database]

CREATE TABLE Majors(
MajorID int PRIMARY KEY,
Name varchar(255)
);

CREATE TABLE Students(
StudentID int PRIMARY KEY,
StudentNumber int , 
StudentName varchar(255),
MajorID int FOREIGN KEY REFERENCES Majors(MajorID)
);

CREATE TABLE Payments(
PaymentID int PRIMARY KEY,
PaymentDate DATE ,
PaymentAmount int, 
StudentID int FOREIGN KEY REFERENCES Students(StudentID)
);

CREATE TABLE Subjects(
SubjectID int PRIMARY KEY,
SubjectName varchar(255)
);

CREATE TABLE Agenda(
StudentID int FOREIGN KEY REFERENCES Students(StudentID),
SubjectID int FOREIGN KEY REFERENCES Subjects(SubjectID)

CONSTRAINT PK_Agenda PRIMARY KEY(StudentID,SubjectID)
);