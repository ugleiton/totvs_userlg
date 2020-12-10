CREATE OR REPLACE FUNCTION TOTVSLG_DATA(USERLG IN CHAR) RETURN DATE 
AS 
DATA_RETORNO DATE;
BEGIN

  IF(USERLG<>'     ') THEN
    DATA_RETORNO := TO_DATE('19960101','yyyymmdd')+((ASCII(SUBSTR(USERLG,12,1)) - 50) * 100 + (ASCII(SUBSTR(USERLG,16,1)) - 50));
  ELSE
    DATA_RETORNO := NULL;
  END IF;
  RETURN DATA_RETORNO;
END TOTVSLG_DATA;