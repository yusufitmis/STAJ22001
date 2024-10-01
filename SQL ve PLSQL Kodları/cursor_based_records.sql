DECLARE
    CURSOR c_emp IS SELECT EMPLOYEE_ID,FIRS_NAME,LAST_NAME,SALARY FROM EMPLOYEES
                    WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);
    calisanlar cemp%rowtype;
BEGIN
    select avg(salary) INTO calisanlar.salary from employees;
    dbms_output.put_line(calisanlar.salary);
    open c_emp;
        fetch c_emp INTO calisanlar;
        EXIT when cemp%notfound;
        dbms_output.put_line(calisanlar.employee_id || calisanlar.first_name|| calisanlar.last_name||calisanlar.salary);
    close c_emp;
END;