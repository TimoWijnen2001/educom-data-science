SELECT DISTINCT
    cities1.name AS C1_name,
    cities2.name AS C2_name,
    cities1.id AS C1_id,
    cities2.id AS C2_id,
    cities1.commune_ID AS C1_commune_ID,
    cities2.commune_ID AS C2_commune_ID
FROM mhl.mhl_cities AS cities1
LEFT JOIN mhl.mhl_cities AS cities2
    ON cities1.name = cities2.name
WHERE cities1.id < cities2.id
ORDER BY cities1.name