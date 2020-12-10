IF EXISTS (SELECT *
           FROM   sys.objects
           WHERE  object_id = OBJECT_ID(N'[dbo].[fnTOTVS_GetLGUser]')
                  AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
  DROP FUNCTION [dbo].[fnTOTVS_GetLGUser]
GO 

CREATE FUNCTION [dbo].[fnTOTVS_GetLGUser](@cCpoLG VARCHAR(17)) RETURNS VARCHAR(20) 

AS 
BEGIN

DECLARE @cRetCodUser VARCHAR(20);

SET @cRetCodUser = SubString(@cCpoLG, 11,1) + SubString(@cCpoLG, 15,1) + 
              SubString(@cCpoLG, 2, 1) + SubString(@cCpoLG, 6, 1) + 
              SubString(@cCpoLG, 10,1) + SubString(@cCpoLG, 14,1) + 
              SubString(@cCpoLG, 1, 1) + SubString(@cCpoLG, 5, 1) + 
              SubString(@cCpoLG, 9, 1) + SubString(@cCpoLG, 13,1) + 
              SubString(@cCpoLG, 17,1) + SubString(@cCpoLG, 4, 1) + 
              SubString(@cCpoLG, 8, 1);
  RETURN @cRetCodUser
END