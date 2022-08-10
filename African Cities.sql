SELECT CITY.NAME 
FROM CITY 
INNER JOIN COUNTRY
ON CITY.COUNTRYCODE=COUNTRY.CODE
WHERE COUNTRY.CONTINENT= 'Africa';

--OUTPUT
--Qina 
--Warraq al-Arab 
--Kempton Park 
--Alberton 
--Klerksdorp 
--Uitenhage 
--Brakpan 
--Libreville
