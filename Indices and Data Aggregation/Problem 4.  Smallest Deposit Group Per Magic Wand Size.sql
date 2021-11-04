SELECT TOP 2 MIN(DepositGroup) AS [DepositGroup]
FROM WizzardDeposits
GROUP BY DepositGroup
ORDER BY AVG(MagicWandSize)