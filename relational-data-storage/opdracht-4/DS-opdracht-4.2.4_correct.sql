SELECT *
FROM mhl.mhl_yn_properties AS yn_prop
RIGHT JOIN mhl.mhl_suppliers AS supp
    ON yn_prop.supplier_ID = supp.id
INNER JOIN mhl.mhl_cities AS cities
    ON supp.city_ID = cities.id
WHERE cities.name = "amsterdam"
ORDER BY supp.name