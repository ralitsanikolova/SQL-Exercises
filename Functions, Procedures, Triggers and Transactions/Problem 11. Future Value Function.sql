CREATE FUNCTION ufn_CalculateFutureValue(@sum MONEY, @yearlyInterestRate FLOAT,@numberOfYears INT)
RETURNS MONEY
AS
BEGIN 
	DECLARE @FV MONEY = @sum*(POWER((1+ @yearlyInterestRate),@numberOfYears ))
	RETURN @FV
END 

