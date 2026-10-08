SELECT 
    DAYNAME(joindate) AS weekday,
    COUNT(id) AS "aantal aanmeldingen"
FROM mhl_suppliers
GROUP BY weekday