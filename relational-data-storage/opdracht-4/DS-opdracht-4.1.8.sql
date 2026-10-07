SELECT 
    cities1.name,
    cities1.id,
    cities2.id,
    cities1.commune_ID,
    cities2.commune_ID,
    comm1.name,
    comm2.name
FROM mhl.mhl_cities AS cities1
INNER JOIN mhl.mhl_cities AS cities2
    ON cities1.name = cities2.name
INNER JOIN mhl.mhl_communes AS comm1
    ON cities1.commune_ID = comm1.id
INNER JOIN mhl.mhl_communes AS comm2
    ON cities2.commune_ID = comm2.id
WHERE cities1.id < cities2.id
    AND cities1.commune_ID != ""
    AND cities2.commune_ID != ""
ORDER BY cities1.name