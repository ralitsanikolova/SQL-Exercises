SELECT TOP(50) Employees.EmployeeID, CONCAT(Employees.FirstName,' ', Employees.LastName) AS EmployeeName,
CONCAT(Manager.FirstName,' ' , Manager.LastName) AS ManagerName, Departments.Name AS DepartmentName
FROM Employees
INNER JOIN Employees AS Manager ON Employees.ManagerID = Manager.EmployeeID
JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID
ORDER BY Employees.EmployeeID