CREATE TABLE sifreleme_anahtarlari (
    anahtar_id NUMBER,
    anahtar_degeri RAW(32)
);
INSERT INTO sifreleme_anahtarlari (anahtar_id, anahtar_degeri)
VALUES (1, SYS.DBMS_CRYPTO.RANDOMBYTES(32));
DECLARE
    v_normal_text VARCHAR2(100) := 'Hasta Bilgisi';
    v_sifreli_text RAW(2000);
    v_key RAW(32);
BEGIN
    SELECT anahtar_degeri INTO v_key FROM sifreleme_anahtarlari WHERE anahtar_id = 1;
    
    v_sifreli_text := SYS.DBMS_CRYPTO.ENCRYPT(
        src  => UTL_I18N.STRING_TO_RAW(v_normal_text, 'AL32UTF8'),
        typ  => SYS.DBMS_CRYPTO.ENCRYPT_AES256 + SYS.DBMS_CRYPTO.CHAIN_CBC + SYS.DBMS_CRYPTO.PAD_PKCS5,
        key  => v_key
    );
    
    DBMS_OUTPUT.PUT_LINE('Þifrelenmiþ Veri: ' || RAWTOHEX(v_sifreli_text));
END;
/
DECLARE
    v_sifreli_text RAW(2000) := 'Þifrelenmiþ Veriniz Buraya Gelecek'; 
    v_cozulmus_text RAW(2000);
    v_key RAW(32);
    v_normal_text VARCHAR2(100);
BEGIN
    -- Anahtarý al
    SELECT anahtar_degeri INTO v_key FROM sifreleme_anahtarlari WHERE anahtar_id = 1;
    
    -- Þifre çözme iþlemi
    v_cozulmus_text := SYS.DBMS_CRYPTO.DECRYPT(
        src  => v_sifreli_text,
        typ  => SYS.DBMS_CRYPTO.ENCRYPT_AES256 + SYS.DBMS_CRYPTO.CHAIN_CBC + SYS.DBMS_CRYPTO.PAD_PKCS5,
        key  => v_key
    );
    
    v_normal_text := UTL_I18N.RAW_TO_CHAR(v_cozulmus_text, 'AL32UTF8');
    DBMS_OUTPUT.PUT_LINE('Çözülmüþ Veri: ' || v_normal_text);
END;
/
CREATE TABLE sifreli_hastalar (
    hasta_id NUMBER,
    sifreli_name RAW(2000)
);

DECLARE
    v_normal_text VARCHAR2(100) := 'Hasta Bilgisi';
    v_sifreli_text RAW(2000);
    v_key RAW(32);
BEGIN
    SELECT anahtar_degeri INTO v_key FROM sifreleme_anahtarlari WHERE anahtar_id = 1;
    
    v_sifreli_text := SYS.DBMS_CRYPTO.ENCRYPT(
        src  => UTL_I18N.STRING_TO_RAW(v_normal_text, 'AL32UTF8'),
        typ  => SYS.DBMS_CRYPTO.ENCRYPT_AES256 + SYS.DBMS_CRYPTO.CHAIN_CBC + SYS.DBMS_CRYPTO.PAD_PKCS5,
        key  => v_key
    );

    INSERT INTO sifreli_hastalar (hasta_id, sifreli_name)
    VALUES (1, v_sifreli_text);
END;
/
DECLARE
    v_sifreli_text RAW(2000);
    v_cozulmus_text RAW(2000);
    v_key RAW(32);
    v_normal_text VARCHAR2(100);
BEGIN
    SELECT anahtar_degeri INTO v_key FROM sifreleme_anahtarlari WHERE anahtar_id = 1;
    
    SELECT sifreli_name INTO v_sifreli_text FROM sifreli_hastalar WHERE hasta_id = 1;
    
    v_cozulmus_text := SYS.DBMS_CRYPTO.DECRYPT(
        src  => v_sifreli_text,
        typ  => SYS.DBMS_CRYPTO.ENCRYPT_AES256 + SYS.DBMS_CRYPTO.CHAIN_CBC + SYS.DBMS_CRYPTO.PAD_PKCS5,
        key  => v_key
    );
    
    v_normal_text := UTL_I18N.RAW_TO_CHAR(v_cozulmus_text, 'AL32UTF8');
    DBMS_OUTPUT.PUT_LINE('Çözülmüþ Veri: ' || v_normal_text);
END;
/
