SELECT FirstName
FROM Employees
WHERE (DepartmentId = 3 Or 10) AND (Year(BETWEEN 1995 AND 2005));