CREATE PROCEDURE usp_GetEmployeesSalaryAbove3500
AS
	SELECT FirstName, LastName
	FROM Employees
	WHERE Salary > 3500

GO 
EXEC usp_GetEmployeesSalaryAbove3500