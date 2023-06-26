CREATE OR REPLACE FUNCTION public.totvslg_data(userlg text, OUT data_retorno date)
 RETURNS date
 LANGUAGE plpgsql
AS $function$

	BEGIN
	  IF(USERLG<>'     ') THEN
	    DATA_RETORNO := TO_DATE('19960101','yyyymmdd')+((ASCII(SUBSTR(USERLG,12,1)) - 50) * 100 + (ASCII(SUBSTR(USERLG,16,1)) - 50));
	  ELSE
	    DATA_RETORNO := NULL;
	  END IF;
	  RETURN ;
	END;
$function$
;
