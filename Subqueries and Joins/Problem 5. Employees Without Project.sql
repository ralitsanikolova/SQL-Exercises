SELECT TOP(3) Employees.EmployeeID,Employees.FirstName
FROM  Employees
LEFT JOIN EmployeesProjects ON Employees.EmployeeID = EmployeesProjects.EmployeeID
WHERE EmployeesProjects.ProjectID IS NULL 
ORDER BY Employees.EmployeeID
