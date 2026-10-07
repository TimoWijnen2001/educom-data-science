SELECT 
    supp.name,
    supp.straat,
    supp.huisnr,
    supp.postcode,
    latlong.lat,
    latlong.lng
FROM mhl.pc_lat_long AS latlong
INNER JOIN mhl.mhl_suppliers AS supp
    ON latlong.pc6 = supp.postcode
ORDER BY latlong.lat DESC
LIMIT 5