DECLARE
    CURSOR c_hasta IS SELECT AD,SOYAD FROM HASTA2;
    TYPE ntd_hasta IS TABLE OF c_hasta%rowtype;
    isimler ntd_hasta := ntd_hasta();
    counter NUMBER := 0;
BEGIN
    FOR i IN c_hasta LOOP
        counter := counter + 1;
        isimler.EXTEND;
        isimler(counter).AD := i.AD;
        isimler(counter).SOYAD := i.AD;
        DBMS_OUTPUT.PUT_LINE(isimler(COUNTER).AD || ' ' || isimler(COUNTER).SOYAD);
    END LOOP;
END;