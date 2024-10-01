/*
declare 
    sayac binary_integer;
BEGIN
    loop 
        sayac := nvl(sayac, 0) + 1;
        
        if sayac =2 then
            continue;
        end if;
        continue when sayac = 1;
        exit when sayac = 5;
        /*if sayac = 5 then
            exit;
        end if;
        */
        dbms_output.put_line(sayac || ' sayac');
    end loop;
end;
*/

/*
DECLARE
    rc_hasta  HASTA2%ROWTYPE;
BEGIN
    
   
    LOOP
        rc_hasta.HASTA_NO := nvl(rc_hasta.hasta_no,0)+1;
        if rc_hasta.hasta_no = 4 then
            exit;
        end if;
        
        select decode(rc_hasta.hasta_no,1,'Yusuf',
                                        2,'Efe',
                                        3,'Can')
        into rc_hasta.ad from dual;
        case rc_hasta.HASTA_NO
            when 1 then rc_hasta.soyad:='itmiþ';
            when 2 then rc_hasta.soyad:='itmiþ';
            when 3 then rc_hasta.soyad:='Doðu';
        end case;
        insert into hasta2(hasta_no,ad,soyad)
        values(rc_hasta.hasta_no,rc_hasta.ad,rc_hasta.soyad);
    END LOOP;
END;
*/

