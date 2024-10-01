DECLARE
    TYPE takýmlar IS VARRAY(10) OF char(30);
    takým takýmlar := takýmlar('GS','FB','BJK','TS');
BEGIN
    FOR i IN 1..takým.count LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. TAKIM ' ||takým(i));
    END LOOP;
END;
