SELECT TownID, Name
FROM Towns
WHERE Name NOT LIKE '%r' AND  Name NOT LIKE '%B' 
AND  Name NOT LIKE '%D' '
ORDER BY Name;