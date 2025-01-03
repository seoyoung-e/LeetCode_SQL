SELECT id
FROM (
    SELECT 
        id, 
        recordDate, 
        temperature, 
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature
    FROM Weather
) subquery
WHERE recordDate = date_add(prev_date, interval 1 day) AND temperature > prev_temperature;