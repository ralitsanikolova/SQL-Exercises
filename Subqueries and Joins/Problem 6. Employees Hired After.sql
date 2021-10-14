SELECT FirstName, LastName , HireDate, Departments.Name AS DeptName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.Name = 'Sales' OR Departments.Name =  'Finance' 
AND  HireDate > '1.1.1999'
ORDER BY HireDate