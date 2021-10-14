SELECT EmployeeID, FirstName, LastName, Departments.Name as DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Name = 'Sales'
ORDER BY EmployeeID
