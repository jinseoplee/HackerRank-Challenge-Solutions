SELECT ROUND(lat_n, 4)
FROM (
    SELECT 
        lat_n,
        PERCENT_RANK() OVER(ORDER BY lat_n) AS rank
    FROM station
    ) AS S
WHERE rank = 0.5