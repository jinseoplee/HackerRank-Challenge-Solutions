SELECT city
FROM STATION
WHERE LEFT(city, 1) IN ('a', 'e', 'i', 'o', 'u')