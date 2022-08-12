--Weather Observation Station 5
SELECT CITY, LENGTH(CITY) L FROM STATION
ORDER BY L DESC, CITY
LIMIT 1;
SELECT CITY, LENGTH(CITY) L FROM STATION
ORDER BY L ASC, CITY
LIMIT 1;

--Weather Observation Station 2
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

--Weather Observation Station 13
SELECT ROUND(SUM(LAT_N), 4) FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

--Weather Observation Station 14
SELECT ROUND(MAX(LAT_N), 4) FROM STATION
WHERE LAT_N < 137.2345;

--Weather Observation Station 15
SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N = (
SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);

--Weather Observation Station 16
SELECT ROUND(MIN(LAT_N), 4) FROM STATION
WHERE LAT_N> 38.7780;

--Weather Observation Station 17
SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N = (
SELECT MIN(LAT_N) FROM STATION WHERE LAT_N>38.7780);
