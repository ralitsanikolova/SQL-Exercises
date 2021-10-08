SELECT Username, RIGHT(Email,@, 20) AS Email_Provider
FROM  Users
ORDER BY Email_Provider,Username;