SELECT 
    suppliers.name, 
    suppliers.straat, 
    suppliers.huisnr, 
    suppliers.postcode,
    rubrieken.id,
    rubrieken.name,
    rubrieken.parent
FROM mhl.mhl_suppliers AS suppliers
LEFT JOIN mhl.mhl_cities AS cities 
    ON suppliers.city_ID = cities.id
LEFT JOIN mhl.mhl_suppliers_mhl_rubriek_view as supplier_rubriek
    ON supplier_rubriek.mhl_suppliers_ID = suppliers.id
INNER JOIN mhl.mhl_rubrieken as rubrieken
    ON supplier_rubriek.mhl_rubriek_view_ID = rubrieken.id
INNER JOIN mhl.mhl_rubrieken as rubrieken2
    ON rubrieken.parent = rubrieken2.id
WHERE cities.name = "amsterdam"
    AND (rubrieken.name = "drank" 
        OR rubrieken2.name = "drank")
ORDER BY rubrieken.name, suppliers.name