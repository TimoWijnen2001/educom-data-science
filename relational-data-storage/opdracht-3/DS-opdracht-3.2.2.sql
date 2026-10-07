SELECT 
    suppliers.name,
    suppliers.straat,
    suppliers.huisnr,
    suppliers.postcode
FROM mhl.mhl_suppliers AS suppliers
LEFT JOIN mhl.mhl_membertypes AS membertypes
    ON suppliers.membertype = membertypes.id
WHERE membertypes.name IN ("Gold", "Silver", "Bronze", "GEEN INTERRESSE")