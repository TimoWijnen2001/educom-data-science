SELECT *
FROM mhl.mhl_suppliers AS suppliers
LEFT JOIN mhl.mhl_membertypes AS membertypes
    ON suppliers.membertype = membertypes.id
LEFT JOIN mhl.mhl_cities AS cities
    ON cities.id = suppliers.city_ID
ORDER BY membertypes.name, cities.name, suppliers.postcode  -- ik sorteer op de namen, niet ID