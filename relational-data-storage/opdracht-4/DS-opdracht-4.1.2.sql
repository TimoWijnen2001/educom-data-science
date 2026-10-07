SELECT 
    suppliers.name, 
    suppliers.straat, 
    suppliers.huisnr, 
    suppliers.postcode,
    cities.name
FROM mhl.mhl_suppliers AS suppliers
LEFT JOIN mhl.mhl_cities AS cities 
    ON suppliers.city_ID = cities.id
LEFT JOIN mhl.mhl_communes AS communes
    ON cities.commune_ID = communes.id
WHERE communes.name = "steenwijkerland"