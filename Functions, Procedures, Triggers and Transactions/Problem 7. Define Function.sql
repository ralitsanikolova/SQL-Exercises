CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR (50), @word VARCHAR (50)) 
RETURNS BIT
AS 
BEGIN
	DECLARE @first INT = 1
	DECLARE @lengthOfLetters INT  = LEN(@word)
	DECLARE @letter VARCHAR(1)
	WHILE (@first <= @lengthOfLetters)
	BEGIN
		SET @letter = SUBSTRING(@word, @first , 1)
		IF(CHARINDEX(@letter,  @setOfLetters) > 0)
			SET @first = @first+ 1
		ELSE 
			RETURN 0
		END
		RETURN 1 	
END