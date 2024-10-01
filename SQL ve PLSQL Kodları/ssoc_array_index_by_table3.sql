DECLARE
    TYPE t_assoc_str IS TABLE OF HASTA2.ad%TYPE INDEX BY HASTA2.soyad%TYPE;
    wlast t_assoc_str;
BEGIN
    FOR i IN (SELECT AD, SOYAD FROM HASTA2) LOOP
        wlast(i.soyad) := i.ad;
        DBMS_OUTPUT.PUT_LINE('wlast('||i.soyad||') = '||wlast(i.soyad));
    END LOOP;
END;