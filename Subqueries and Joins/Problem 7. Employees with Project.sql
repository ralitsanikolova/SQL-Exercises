SELECT TOP(5) Employees.EmployeeID, Employees.FirstName, Projects.Name AS ProjectName
FROM Employees
JOIN EmployeesProjects ON Employees.EmployeeID = EmployeesProjects.EmployeeID
JOIN Projects ON EmployeesProjects.ProjectID = Projects.ProjectID
WHERE Projects.StartDate > '2002-08-13' AND Projects.EndDate IS NULL
ORDER BY Employees.EmployeeID