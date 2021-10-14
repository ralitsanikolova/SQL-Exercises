SELECT Employees.EmployeeID, Employees.FirstName, Employees.ManagerID, Managers.FirstName
FROM Employees
INNER JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID
WHERE Employees.ManagerID IN(3,7)
ORDER BY Employees.EmployeeID