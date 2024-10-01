DECLARE 
    TYPE t_assoc_str IS TABLE OF HASTA2.soyad%TYPE INDEX BY BINARY_INTEGER;
    wlast_name t_assoc_str;
    j NUMBER := 0;
BEGIN 
    FOR i IN (SELECT SOYAD FROM HASTA2 WHERE ROWNUM<3) LOOP
        j:= j+1;
        wlast_name(j) := i.SOYAD;
        DBMS_OUTPUT.PUT_LINE(wlast_name(j));
    END LOOP;
END;
