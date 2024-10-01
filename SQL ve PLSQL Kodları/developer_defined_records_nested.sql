DECLARE
    TYPE r_isim IS RECORD(
                        ad employees.FIRST_NAME%TYPE,
                        SOYAD EMPLOYEES.LAST_NAME%TYPE
                        );
    TYPE contact IS RECORD(
                            isim risim,
                            telefon employees.phone_number%type       
                            );
    rehber contact;
BEGIN
    rehber.isim.ad :='yusuf';
    rehber.isim.soyad :='itmiþ';
    rehber.telefon :='05312654742';
    dbms_output.put_line(rehber.isim.ad ||rehber.isim.soyad||rehber.telefon);
END;