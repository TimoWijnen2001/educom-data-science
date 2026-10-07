SELECT 
    hitc.hitcount,
    supp.name AS leverancier,
    cities.name AS Plaats,
    comm.name AS Gemeente,
    distr.name AS Provincie
FROM mhl.mhl_districts AS distr
INNER JOIN mhl.mhl_communes AS comm
    ON distr.id = comm.district_ID
INNER JOIN mhl.mhl_cities AS cities
    ON cities.commune_ID = comm.id
INNER JOIN mhl.mhl_suppliers AS supp
    ON supp.city_ID = cities.id
INNER JOIN mhl.mhl_hitcount as hitc
    ON supp.id = hitc.supplier_ID
WHERE distr.name IN ("Limburg", "Noord-Brabant", "Zeeland")
    AND hitc.year = 2014
    AND hitc.month = 1