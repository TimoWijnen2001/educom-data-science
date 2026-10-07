SELECT 
    name, 
    straat, 
    huisnr, 
    postcode
FROM mhl.mhl_suppliers
WHERE huisnr BETWEEN 10.1 AND 19.9  -- Hierdoor laten we 10 en 20 weg.