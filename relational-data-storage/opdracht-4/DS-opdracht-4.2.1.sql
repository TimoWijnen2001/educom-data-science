SELECT cities.name, cities.commune_ID
FROM mhl.mhl_cities AS cities
LEFT JOIN mhl.mhl_communes AS comm
    ON comm.id = cities.commune_ID
WHERE ISNULL(comm.name)