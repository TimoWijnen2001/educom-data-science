SELECT 
    cit.name, 
    SUM(IF(mem.name="Gold", 1, NULL)) AS Gold,
    SUM(IF(mem.name="Silver", 1, NULL)) AS Silver,
    SUM(IF(mem.name="Bronze", 1, NULL)) AS Bronze,
    SUM(IF(mem.name NOT IN ("Gold", "Silver", "Bronze"), 1, NULL)) AS Other
FROM mhl.mhl_suppliers as supp
INNER JOIN mhl.mhl_membertypes as mem
    ON mem.id = supp.membertype
INNER JOIN mhl.mhl_cities as cit
    ON cit.id = supp.`city_ID`
GROUP BY cit.id
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC