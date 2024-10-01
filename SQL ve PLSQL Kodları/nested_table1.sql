DECLARE 
    TYPE ndt_isimler IS TABLE OF VARCHAR(30);
    TYPE ndt_puanlar IS TABLE OF NUMBER;
    isim ndt_isimler;
    puan ndt_puanlar;
BEGIN
    isim := ndt_isimler('ALÝ','AYÞE','VELÝ');
    puan := ndt_puanlar(30,60,90);
    
    DBMS_OUTPUT.PUT_LINE('TOPLAM ÖÐRENCÝ: ' || isim.COUNT);
    
    FOR i IN 1..isim.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(isim(i) || 'NÝN PUANI '||puan(i));
    END LOOP;
END;