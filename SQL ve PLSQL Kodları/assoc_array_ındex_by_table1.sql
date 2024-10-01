DECLARE 
    TYPE t_assoc_num IS TABLE OF PLS_INTEGER INDEX BY PLS_INTEGER;
    wkare t_assoc_num;
    j NUMBER;
BEGIN
    FOR i IN 1..10 LOOP
        wkare(i) := POWER(i,2);
    END LOOP;
    j := wkare.FIRST;
    WHILE j IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE(j||' . SAYININ KARESÝ '||wkare(j));
        j:=wkare.NEXT(j);
    END LOOP;
    
END;
