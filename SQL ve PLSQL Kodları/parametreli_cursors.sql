DECLARE
CURSOR c_hasta(whasta_no hasta2.hasta_no%type default 90) 
        IS SELECT * FROM HASTA2 ORDER BY 1
        where hasta_no=1;
r_oku c_hasta%rowtype;

BEGIN
    OPEN c_hasta(30);
    LOOP
        FETCH c_hasta INTO r_oku;
        EXIT WHEN c_hasta%NOTFOUND ;
        DBMS_OUTPUT.PUT_LINE(r_oku.HASTA_NO|| ' NUMARALI HASTA '||r_oku.AD||' '||r_oku.SOYAD);
    END LOOP;

    CLOSE c_hasta;

END;
