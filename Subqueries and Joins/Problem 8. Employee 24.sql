SELECT Employees.EmployeeID, Employees.FirstName,

CASE 
WHEN Projects.StartDate > '2005' THEN NULL
ELSE Projects.Name 
END 
FROM Employees

JOIN EmployeesProjects ON Employees.EmployeeID = EmployeesProjects.EmployeeID
JOIN Projects ON EmployeesProjects.ProjectID = Projects.ProjectID
WHERE Employees.EmployeeID = 24
