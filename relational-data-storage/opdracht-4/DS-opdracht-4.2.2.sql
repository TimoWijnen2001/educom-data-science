SELECT cities.name, IFNULL(comm.name, "INVALID")
FROM mhl.mhl_cities AS cities
LEFT JOIN mhl.mhl_communes AS comm
    ON comm.id = cities.commune_ID
ORDER BY cities.name