DECLARE
    CURSOR c_hasta IS SELECT AD FROM HASTA2;
    TYPE ntd_hasta IS TABLE OF HASTA2.AD%TYPE;
    isimler ntd_hasta := ntd_hasta();
    counter NUMBER := 0;
BEGIN
    FOR i IN c_hasta LOOP
        counter := counter + 1;
        isimler.EXTEND;
        isimler(counter) := i.AD;
        DBMS_OUTPUT.PUT_LINE(isimler(COUNTER));
    END LOOP;
END;