DECLARE 
    calisanlar employees%rowtype;
BEGIN
    SELECT * INTO calisanlar from employees where salary = (select max(salary) from employees);
    DBMS_OUTPUT.PUT_LINE(CAL�SANLAR.F�RST_NAME || CAL�SANLAR.LAST_NAME || CASL�SANLAR.SALARY);    
END;