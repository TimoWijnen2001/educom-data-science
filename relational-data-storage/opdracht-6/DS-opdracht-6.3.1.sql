SELECT 
    name,
    CONCAT(UPPER(LEFT(name, 1)), RIGHT(name,LENGTH(name)-1))    
FROM mhl.mhl_cities
ORDER BY name