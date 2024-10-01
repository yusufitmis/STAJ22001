DECLARE 
    TYPE r_zaman_type IS RECORD(
                            curr_date DATE,
                            curr_day VARCHAR(20),
                            curr_time VARCHAR(9):='00:00:00'
                            
                            );
    r_zaman  r_zaman_type;
BEGIN
    select sysdate INTO r_zaman.curr_date from dual;
    r_zaman.curr_day := to_char(r_zaman.curr_date,'day');
    r_zaman.curr_time := to_char(r_zaman.curr_date,'HH24:MI:SS');
    dbms_output.put_lýne(r_zaman.curr_date||r_zaman.curr_day||r_zaman.curr_time);
END;
