
DECLARE
    TYPE tak�mlar IS VARRAY(10) OF char(30);
    tak�m tak�mlar := tak�mlar('GS','FB','BJK','TS');
BEGIN
    FOR i IN 1..tak�m.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||tak�m(i));
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
    tak�m.extend;
    tak�m(5) := 'BURSASPOR';
    TAKIM(3) := 'ANKARAG�C�';
    FOR i IN 1..tak�m.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||tak�m(i));
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    tak�m := tak�mlar('ordu','giresun','samsun','rize');
    FOR i IN 1..tak�m.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||tak�m(i));
    END LOOP;
END;    