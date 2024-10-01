DECLARE
    TYPE varr_type IS VARRAY(10) OF INTEGER;
    varr1 varr_type := varr_type(10,20,30,40,50,60,70);
BEGIN
    dbms_output.new_line;
    dbms_output.put_line('orjinal deðerler');
    FOR i IN 1..varr1.count LOOP
        dbms_output.put_line(i||'. DEÐER: '||VARR1(i));
    END LOOP;
    
    dbms_output.new_line;
    dbms_output.put_line('TRÝM SONRASI deðerler');
    varr1.TRIM;
    FOR i IN 1..varr1.count LOOP
        dbms_output.put_line(i||'. DEÐER: '||VARR1(i));
    END LOOP;
    
    dbms_output.new_line;
    dbms_output.put_line('TRÝM(N) SONRASI deðerler');
    varr1.TRIM(2);
    FOR i IN 1..varr1.count LOOP
        dbms_output.put_line(i||'. DEÐER: '||VARR1(i));
    END LOOP;
       
END;