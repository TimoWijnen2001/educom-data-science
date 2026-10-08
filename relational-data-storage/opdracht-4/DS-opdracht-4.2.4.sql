-- Van alle mogelijke YN properties moet ik voor iedere supplier weten of deze actief is of niet

SELECT 
    supp.name AS Leveranciersnaam,
    proptype.name AS Propertytype,
    IFNULL(yn_prop.content, "NOT SET")AS Value
FROM mhl.mhl_suppliers as supp
CROSS JOIN mhl.mhl_propertytypes as proptype
LEFT JOIN mhl.mhl_yn_properties as yn_prop
    ON supp.id = yn_prop.supplier_ID
    AND proptype.id = yn_prop.propertytype_ID
INNER JOIN mhl.mhl_cities as cities
    ON cities.id = supp.city_ID
WHERE proptype.proptype = "A"
    AND supp.city_ID
    AND cities.name = "Amsterdam"