SELECT 
    EXTRACT(YEAR FROM joindate) AS jaar,
    DATE_FORMAT(joindate, "%M") AS maand,
    COUNT(id)
FROM mhl_suppliers
GROUP BY jaar, maand
ORDER BY jaar, EXTRACT(MONTH FROM joindate)