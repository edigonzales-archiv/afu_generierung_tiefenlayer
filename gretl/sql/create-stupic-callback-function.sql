CREATE OR REPLACE FUNCTION 
  ${schema_name}.stupid_callback(pixel double precision[][][], pos integer[][], VARIADIC userargs text[]) 
    RETURNS double precision 
    LANGUAGE plpgsql 
    IMMUTABLE
    AS 
    '
      DECLARE
        r1_val double precision; -- dhm
        r2_val double precision; -- lockergestein_basis
        r3_val int; -- gws
      BEGIN
        
        r1_val := pixel[1][1][1]::double precision; -- dhm
        r2_val := pixel[2][1][1]::double precision; -- lockergestein_basis
        r3_val := pixel[3][1][1]::int; -- gws
        
        IF r1_val = 0 OR r2_val = 0 THEN 
          RETURN -9999;
        END IF;

        IF r2_val = 0 THEN
          RETURN 31.4159265359; -- Falls kein Lockergestein_Basis vorhanden ist, darf ich immer so tief bohren... 
        END IF;
  
        IF r1_val >= r2_val THEN
          IF r3_val = 1 THEN 
            RETURN -8888; -- falls GWS -> bohren verboten
          ELSE
            RETURN r1_val - r2_val;
          END IF;
        ELSE
          RETURN 20.0; -- Falls Lockergestein_Basis grösser als DHM, darf man trotzdem 20m tief bohren.
        END IF;
      END;
    '
  ;