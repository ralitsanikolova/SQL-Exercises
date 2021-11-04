CREATE PROC usp_GetTownsStartingWith   @StartString nvarchar(20)
AS
 SELECT Name
 FROM Towns
 WHERE Name LIKE @StartString + '%'

