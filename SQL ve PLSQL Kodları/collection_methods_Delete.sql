DECLARE
    TYPE nst_num IS TABLE OF NUMBER;
    numa nst_num := nst_num(10,20,30,40);
BEGIN
    FOR i IN 1..numa.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(i||'. ELEMAN: '||numa(i));
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    numa.DELETE(2);
    FOR i IN 1..numa.COUNT LOOP
        IF numa.EXISTS(i) THEN
            DBMS_OUTPUT.PUT_LINE(i||'. ELEMAN: '||numa(i));
        ELSE
            DBMS_OUTPUT.PUT_LINE(i||'. ELEMAN: YOK ');
        END IF;
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    numa.DELETE;
    
END;