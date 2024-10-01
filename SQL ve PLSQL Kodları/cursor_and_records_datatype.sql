DECLARE
r_oku hasta2%rowtype;
CURSOR c_hasta IS SELECT *
                  FROM HASTA2 ORDER BY 1;
BEGIN
    IF  NOT c_hasta%ISOPEN THEN
        OPEN c_hasta;
    END IF;
    LOOP
        FETCH c_hasta INTO r_oku;
        EXIT WHEN c_hasta%NOTFOUND OR c_hasta%rowcount>3;
        DBMS_OUTPUT.PUT_LINE('sorgu no '||c_hasta%rowcount||r_oku.HASTA_NO|| ' NUMARALI HASTA '||r_oku.AD||' '||r_oku.SOYAD);
    END LOOP;
    
    IF c_hasta%ISOPEN THEN
        CLOSE c_hasta;
    END IF;
END;