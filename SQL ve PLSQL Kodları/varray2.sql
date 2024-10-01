
DECLARE
    TYPE takýmlar IS VARRAY(10) OF char(30);
    takým takýmlar := takýmlar('GS','FB','BJK','TS');
BEGIN
    FOR i IN 1..takým.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||takým(i));
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
    takým.extend;
    takým(5) := 'BURSASPOR';
    TAKIM(3) := 'ANKARAGÜCÜ';
    FOR i IN 1..takým.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||takým(i));
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    takým := takýmlar('ordu','giresun','samsun','rize');
    FOR i IN 1..takým.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||takým(i));
    END LOOP;
END;    