DECLARE
    WMAAS EMPLOYEES.SALARY%TYPE;
    WYENIMAAS EMPLOYEES.SALARY%TYPE := 1.25;
    PROCEDURE maas_hesapla(
        p_id IN employees.employee_id%type,
        maas OUT employees.salary%type,
        yeni_maas IN OUT employees.salary%type
        ) IS
        BEGIN 
            SELECT SALARY INTO MAAS FROM EMPLOYEES WHERE EMPLOYEE_ID = P_ID;
            YENI_MAAS := YENI_MAAS * MAAS;
            
        END;
BEGIN
    MAAS_HESAPLA(101,wmaas,wyenimaas);
    DBMS_OUTPUT.PUT_LINE('MEVCUT MAAS ' || WMAAS ||' ZAMLI MAAS ' ||YANIMAAS);
END;