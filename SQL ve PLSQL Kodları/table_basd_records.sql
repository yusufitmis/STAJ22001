DECLARE 
    calisanlar employees%rowtype;
BEGIN
    SELECT * INTO calisanlar from employees where salary = (select max(salary) from employees);
    DBMS_OUTPUT.PUT_LINE(CALÝSANLAR.FÝRST_NAME || CALÝSANLAR.LAST_NAME || CASLÝSANLAR.SALARY);    
END;