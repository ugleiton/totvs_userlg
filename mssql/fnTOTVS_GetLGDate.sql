IF EXISTS (SELECT *
           FROM   sys.objects
           WHERE  object_id = OBJECT_ID(N'[dbo].[fnTOTVS_GetLGDate]')
                  AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
  DROP FUNCTION [dbo].[fnTOTVS_GetLGDate]
GO 

CREATE FUNCTION fnTOTVS_GetLGDate(@cCpoLG VARCHAR(17)) RETURNS VARCHAR(8) 

AS 
BEGIN

DECLARE @cRetDate VARCHAR(08) = ''
DECLARE @AuxDate DateTime

  IF ( LTRIM(RTRIM(@cCpoLG)) <> '') 
  Begin
	SET @AuxDate = Cast('19960101' as DateTime)+((ASCII(SubString(@cCpoLG,12,1)) - 50) * 100 + (ASCII(SubString(@cCpoLG,16,1)) - 50))
	SET @cRetDate = Convert(VarChar(8), @AuxDate, 112)
  END
  RETURN @cRetDate

END