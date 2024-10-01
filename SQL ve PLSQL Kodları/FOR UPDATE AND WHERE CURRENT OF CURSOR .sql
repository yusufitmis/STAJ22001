DECLARE
CURSOR c_emp IS SELECT *
                  FROM hasta ORDER BY 1 FOR UPDATE OF hasta_no;
BEGIN
    FOR R_OKU IN C_emp LOOP
        IF R_OKU.hasta_no < 10 THEN
            DBMS_OUTPUT.PUT_LINE(R_OKU.hastaad || 'isimli hasta UPDATE EDÝLDÝ');
            UPDATE hasta SET
                hasta_no = hasta_no *1.2
            --WHERE EMPLOYEE_ID = R_OKU.EMPLOYEE_ID;
            WHERE CURRENT OF C_EMP;
        END IF;
    END LOOP;
END;
