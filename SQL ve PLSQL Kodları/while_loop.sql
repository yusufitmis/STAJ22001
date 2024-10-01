declare
    tarih1 DATE;
    tarih2 DATE;
BEGIN 
    tarih1 := TO_DATE('12-07-2004','DD-MM-YYYY');
    tarih2 :=LAST_DAY(TARIH1);
    
    WHILE tarih1 <= tarih2 LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(tarih1,'DAY')||TO_CHAR(tarih1,'DD-MM-YYYY'));
        tarih1 := tarih1+1;
    END LOOP;
END;