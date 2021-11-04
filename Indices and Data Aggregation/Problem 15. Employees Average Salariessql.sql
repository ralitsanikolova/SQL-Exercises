SELECT *
	 INTO EmployeesHigherSalary 
	 FROM Employees
	 WHERE Salary > 3000

DELETE EmployeesHigherSalary
WHERE ManagerID = 42

UPDATE EmployeesHigherSalary
SET Salary += 5000
WHERE  DepartmentID = 1

SELECT DepartmentID, AVG(Salary) AS [AverageSalary]
FROM EmployeesHigherSalary
GROUP BY DepartmentID