CREATE PROC usp_GetEmployeesFromTown @townName NVARCHAR(20) 
AS
	SELECT Employees.FirstName, Employees.LastName
	FROM  Employees
	INNER JOIN Addresses ON Employees.AddressID = Addresses.AddressID
	INNER JOIN Towns ON Towns.TownID = Addresses.TownID
	WHERE Towns.Name = @townName