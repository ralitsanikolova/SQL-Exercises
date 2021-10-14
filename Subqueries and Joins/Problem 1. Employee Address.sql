SELECT TOP(5) EmployeeId, JobTitle , Addresses.AddressID, Addresses.AddressText
FROM Employees
JOIN Addresses ON Employees.AddressID = Addresses.AddressID
ORDER BY AddressID



