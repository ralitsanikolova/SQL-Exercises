CREATE PROC usp_EmployeesBySalaryLevel (@levelSalary VARCHAR(10)) 
AS
	BEGIN
		DECLARE @Salary VARCHAR(10)
		SELECT Firstname AS [First Name], LastName AS [LastName]
		FROM Employees
		WHERE dbo.ufn_GetSalaryLevel(Salary)  = @levelSalary
END




	