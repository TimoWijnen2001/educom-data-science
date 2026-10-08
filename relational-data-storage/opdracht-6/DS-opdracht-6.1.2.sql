SELECT 
    comm.name AS Gemeente, 
    supp.name AS Leverancier,
    SUM(hitc.hitcount) AS totale_hitcount, 
    avg_hitcount.avg_hitc AS gemiddelde_hitcount,
    (SUM(hitc.hitcount)-avg_hitcount.avg_hitc) AS verschil 
FROM mhl.mhl_suppliers AS supp
INNER JOIN mhl.mhl_hitcount AS hitc
    ON supp.id =hitc.`supplier_ID`
INNER JOIN mhl.mhl_cities as cit
    ON cit.id = supp.`city_ID`
INNER JOIN mhl.mhl_communes as comm
    ON cit.`commune_ID` = comm.id
INNER JOIN 
        (SELECT 
            comm.id ,
            AVG(hitc.hitcount) AS avg_hitc
        FROM mhl.mhl_suppliers AS supp
        INNER JOIN mhl.mhl_hitcount AS hitc
            ON supp.id =hitc.`supplier_ID`
        INNER JOIN mhl.mhl_cities as cit
            ON cit.id = supp.`city_ID`
        INNER JOIN mhl.mhl_communes as comm
            ON cit.`commune_ID` = comm.id
        GROUP BY comm.id) AS avg_hitcount
    ON avg_hitcount.id = comm.id
GROUP BY Gemeente, leverancier
HAVING totale_hitcount > gemiddelde_hitcount
ORDER BY verschil DESC