SELECT ProductName, OrderDate,
DATEADD(DAY, 3, OrderDate) AS Pay_Due,
DATEADD(MONTH, 1 , OrderDate) AS Delivered_Due
FROM Orders;
