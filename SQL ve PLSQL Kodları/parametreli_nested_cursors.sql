DECLARE
CURSOR c_loc 
        IS SELECT location_id,city FROM LOCATÝONS ORDER BY CÝTY;
r_loc c_loc%rowtype;

CURSOR c_dep(l_loc_id departments.location_id%type) 
        IS SELECT department_id,department_name FROM departments 
        where location_id = l_loc_id
        ORDER BY department_id;
r_dep c_dep%rowtype;

CURSOR c_emp(d_dep_id employees.department_id%type) 
        IS SELECT employee_id,employee_name || ' ' ||employee_last_name as ad_soyad,hire_date FROM employees
        where department_id =d_dep_id
        ORDER BY employee_id;
r_emp c_emp%rowtype;


BEGIN
    OPEN c_loc;
    LOOP
        FETCH c_loc INTO r_loc;
        EXIT WHEN c_loc%NOTFOUND ;
        DBMS_OUTPUT.PUT_LINE(r_loc.location_id||' sehir ' || r_loc.city);
        open c_dep(r_loc.location_id);
        loop
            FETCH c_dep INTO r_dep;
            EXIT WHEN c_dep%NOTFOUND ;
            DBMS_OUTPUT.PUT_LINE('      '||r_dep.department_id||' departman adý ' || r_dep.department_name);
            open c_emp(r_dep.department_id);
            loop
            FETCH c_emp INTO r_emp;
            EXIT WHEN c_emp%NOTFOUND ;
            DBMS_OUTPUT.PUT_LINE('      '||r_emp.employee_id||' departman adý ' || r_emp.ad_Soyad|| '('||to_char(hire_date,'dd-mm-yyyy')||')');
            end loop;
        end loop;
        
    END LOOP;
    CLOSE c_loc;

END;
