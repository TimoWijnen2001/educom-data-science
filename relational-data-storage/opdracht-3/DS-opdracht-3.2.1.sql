SELECT 
    suppliers.name, 
    suppliers.straat, 
    suppliers.huisnr, 
    suppliers.postcode
FROM mhl.mhl_suppliers AS suppliers
LEFT JOIN mhl.mhl_cities AS cities 
    ON suppliers.city_ID = cities.id
WHERE cities.name = "amsterdam"