SELECT 
    CASE 
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 25 AND 30 THEN '25-30'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 31 AND 35 THEN '31-35'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 36 AND 40 THEN '36-40'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 41 AND 45 THEN '41-45'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 46 AND 50 THEN '46-50'
        ELSE '50+' 
    END AS yas_gruplarý,
    CASE 
        WHEN h.CINSIYET = 0 THEN 'Erkek'
        WHEN h.CINSIYET = 1 THEN 'Kadýn'
        ELSE 'Belirtilmemiþ'
    END AS cinsiyet,
    MAX(t.sikayetler) AS max_sikayet,
    COUNT(*) AS toplam_hasta
FROM HASTA h
JOIN tibbi_kayitlar t ON h.HASTA_ID = t.HASTA_ID
GROUP BY 
    CASE 
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 25 AND 30 THEN '25-30'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 31 AND 35 THEN '31-35'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 36 AND 40 THEN '36-40'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 41 AND 45 THEN '41-45'
        WHEN ROUND((SYSDATE - h.DOGUM_TARIHI) / 365, 0) BETWEEN 46 AND 50 THEN '46-50'
        ELSE '50+' 
    END,
    CASE 
        WHEN h.CINSIYET = 0 THEN 'Erkek'
        WHEN h.CINSIYET = 1 THEN 'Kadýn'
        ELSE 'Belirtilmemiþ'
    END
ORDER BY yas_gruplarý;

select upper('HIMS için geliþmiþ raporlar oluþturma.') from dual;
