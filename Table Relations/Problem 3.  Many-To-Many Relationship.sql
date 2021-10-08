CREATE TABLE Students(
StudentID int PRIMARY KEY IDENTITY(1,1),
Name varchar(255)
);

CREATE TABLE Exams(
ExamID int PRIMARY KEY IDENTITY(100, 1),
Name varchar(255)
);

CREATE TABLE StudentsExams(
StudentID int FOREIGN KEY REFERENCES Students(StudentID),
ExamID int FOREIGN KEY REFERENCES Exams(ExamID)

CONSTRAINT PK_Students PRIMARY KEY(StudentID, ExamID)
);

INSERT INTO Students(Name)
VALUES ('Mila'),('Toni'), ('Ron');

INSERT INTO Exams(Name)
VALUES ('SpringMVC') , ('Neo4j'), ('Oracle 11g')

INSERT INTO StudentsExams
VALUES  (1, 101),(1, 102),(2, 101),(3, 103),(2, 102),(2, 103);
