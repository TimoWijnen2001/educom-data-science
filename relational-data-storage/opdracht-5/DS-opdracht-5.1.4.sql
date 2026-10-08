SELECT 
    supp.name AS leveranciersNaam,
    SUM(hitcount) AS numHits,
    COUNT(month) AS numMonths,
    AVG(hitcount) AS avgPerMonth
FROM mhl.mhl_hitcount AS hitcount
INNER JOIN mhl.mhl_suppliers AS supp
    ON supp.id = hitcount.supplier_ID
GROUP BY leveranciersNaam
HAVING numHits > 100
ORDER BY numHits DESC