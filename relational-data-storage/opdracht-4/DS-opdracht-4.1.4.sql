SELECT 
    supp.name,
    supp.straat,
    supp.huisnr,
    supp.postcode
FROM mhl.mhl_yn_properties as yn_prop
INNER JOIN mhl.mhl_suppliers AS supp
    ON supp.id = yn_prop.supplier_ID
INNER JOIN mhl.mhl_propertytypes proptypes
    ON proptypes.id = yn_prop.propertytype_ID
WHERE proptypes.name = "ook voor particulieren" 
    OR proptypes.name = "specialistische leverancier"