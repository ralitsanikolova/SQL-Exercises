SELECT SUM(wizards.[Difference]) AS [SumDifference]
FROM (
		SELECT FirstName AS [Host Wizard],
		DepositAmount AS [Host Wizard Deposit],
		LEAD (FirstName) OVER(ORDER BY Id) AS [Guest Wizzard],
		LEAD ( DepositAmount) OVER(ORDER BY Id) AS [Guest Wizzard Deposit],
		DepositAmount - LEAD ( DepositAmount) OVER(ORDER BY Id)	AS  [Difference]
		FROM WizzardDeposits
) as wizards