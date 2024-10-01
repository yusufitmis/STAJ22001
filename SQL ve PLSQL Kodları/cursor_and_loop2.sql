DECLARE
CURSOR c_hasta IS SELECT *
                  FROM HASTA2 ORDER BY 1;
BEGIN
    FOR R_OKU IN C_HASTA LOOP
        DBMS_OUTPUT.PUT_LINE('sorgu no '||c_hasta%rowcount||
        r_oku.HASTA_NO|| ' NUMARALI HASTA '||r_oku.AD||
        ' '||r_oku.SOYAD);
    END LOOP;
END;